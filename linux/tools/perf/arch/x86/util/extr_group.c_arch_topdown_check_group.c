
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sysctl__read_int (char*,int*) ;

bool arch_topdown_check_group(bool *warn)
{
 int n;

 if (sysctl__read_int("kernel/nmi_watchdog", &n) < 0)
  return 0;
 if (n > 0) {
  *warn = 1;
  return 0;
 }
 return 1;
}
