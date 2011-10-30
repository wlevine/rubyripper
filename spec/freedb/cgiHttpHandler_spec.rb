#!/usr/bin/env ruby
#    Rubyripper - A secure ripper for Linux/BSD/OSX
#    Copyright (C) 2007 - 2010 Bouke Woudstra (boukewoudstra@gmail.com)
#
#    This file is part of Rubyripper. Rubyripper is free software: you can
#    redistribute it and/or modify it under the terms of the GNU General
#    Public License as published by the Free Software Foundation, either
#    version 3 of the License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>

require 'rubyripper/freedb/cgiHttpHandler'

describe CgiHttpHandler do

  let(:prefs) {double('Preferences').as_null_object}

  it "should return the path correctly and configure only once" do
    site = "http://freedb.freedb.org/~cddb/cddb.cgi"
    prefs.should_receive(:site).and_return(site)
    @cgi = CgiHttpHandler.new(prefs)
    @cgi.path.should == "/~cddb/cddb.cgi"
    @cgi.path.should == "/~cddb/cddb.cgi"
  end
end
