
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HWP_EPP_BALANCE_PERFORMANCE ;
 int HWP_EPP_BALANCE_POWERSAVE ;
 int HWP_EPP_PERFORMANCE ;
 int HWP_EPP_POWERSAVE ;





 int fprintf (int ,char*) ;
 int stderr ;
 int update_hwp_epp ;
 int usage () ;

int parse_cmdline_hwp_epp(int i)
{
 update_hwp_epp = 1;

 switch (i) {
 case 128:
  return HWP_EPP_POWERSAVE;
 case 131:
  return HWP_EPP_BALANCE_POWERSAVE;
 case 130:
 case 132:
  return HWP_EPP_BALANCE_PERFORMANCE;
 case 129:
  return HWP_EPP_PERFORMANCE;
 }
 if (i < 0 || i > 0xff) {
  fprintf(stderr, "--hwp-epp must be from 0 to 0xff\n");
  usage();
 }
 return i;
}
