
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CEPH_FILE_MODE_LAZY ;
 int CEPH_FILE_MODE_PIN ;
 int CEPH_FILE_MODE_RD ;
 int CEPH_FILE_MODE_RDWR ;
 int CEPH_FILE_MODE_WR ;

 int O_DIRECTORY ;
 int O_LAZY ;




int ceph_flags_to_mode(int flags)
{
 int mode;






 switch (flags & 131) {
 case 128:
  mode = CEPH_FILE_MODE_WR;
  break;
 case 130:
  mode = CEPH_FILE_MODE_RD;
  break;
 case 129:
 case 131:
  mode = CEPH_FILE_MODE_RDWR;
  break;
 }





 return mode;
}
