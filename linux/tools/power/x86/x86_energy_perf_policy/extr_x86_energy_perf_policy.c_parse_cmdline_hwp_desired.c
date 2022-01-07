
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int update_hwp_desired ;

int parse_cmdline_hwp_desired(int i)
{
 update_hwp_desired = 1;

 switch (i) {
 case 128:
 case 131:
 case 132:
 case 130:
 case 129:
  return 0;
 }
 return i;
}
