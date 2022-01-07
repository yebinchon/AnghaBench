
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_osd_state_name(int s)
{
 switch (s) {
 case 130:
  return "exists";
 case 128:
  return "up";
 case 131:
  return "autoout";
 case 129:
  return "new";
 default:
  return "???";
 }
}
