
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CEPH_OSD_EXISTS ;
 int CEPH_OSD_UP ;
 int snprintf (char*,int,char*) ;

char *ceph_osdmap_state_str(char *str, int len, u32 state)
{
 if (!len)
  return str;

 if ((state & CEPH_OSD_EXISTS) && (state & CEPH_OSD_UP))
  snprintf(str, len, "exists, up");
 else if (state & CEPH_OSD_EXISTS)
  snprintf(str, len, "exists");
 else if (state & CEPH_OSD_UP)
  snprintf(str, len, "up");
 else
  snprintf(str, len, "doesn't exist");

 return str;
}
