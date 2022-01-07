
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HWP_CAP_HIGHEST ;
 int HWP_CAP_LOWEST ;





 int update_hwp_min ;

int parse_cmdline_hwp_min(int i)
{
 update_hwp_min = 1;

 switch (i) {
 case 128:
 case 131:
 case 130:
 case 132:
  return HWP_CAP_LOWEST;
 case 129:
  return HWP_CAP_HIGHEST;
 }
 return i;
}
