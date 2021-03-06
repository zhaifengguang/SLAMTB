function Map = createMap(Rob,Sen,Opt)

% CREATEMAP Create an empty Map structure.
%   Map = CREATEMAP(Rob,Sen,Lmk,Opt) creates the structure Map from the
%   information contained in Rob, Sen and Lmk, using options Opt. The
%   resulting structure is an EKF map with all empty spaces, able to host
%   all states necessary for Rob, Sen and Lmk. It contains the fields:
%       .used   flags vector to used states in the map
%       .x      state vector
%       .P      covariances matrix
%       .size   size of the map

%   Copyright 2008-2009 Joan Sola @ LAAS-CNRS.


R = [Rob.state];
S = [Sen.state];

n = sum([R.size S.size Opt.map.lmkSize*Opt.map.numLmks]);

Map.used = false(n,1);

Map.x = zeros(n,1);
Map.P = zeros(n,n);

% Map.size = n;




% ========== End of function - Start GPL license ==========


%   # START GPL LICENSE

%---------------------------------------------------------------------
%
%   This file is part of SLAMTB, a SLAM toolbox for Matlab.
%
%   SLAMTB is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or
%   (at your option) any later version.
%
%   SLAMTB is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with SLAMTB.  If not, see <http://www.gnu.org/licenses/>.
%
%---------------------------------------------------------------------

%   SLAMTB is Copyright 2007,2008,2009 
%   by Joan Sola, David Marquez and Jean Marie Codol @ LAAS-CNRS.
%   See on top of this file for its particular copyright.

%   # END GPL LICENSE

