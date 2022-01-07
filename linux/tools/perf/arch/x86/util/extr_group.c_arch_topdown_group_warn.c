
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

void arch_topdown_group_warn(void)
{
 fprintf(stderr,
  "nmi_watchdog enabled with topdown. May give wrong results.\n"
  "Disable with echo 0 > /proc/sys/kernel/nmi_watchdog\n");
}
