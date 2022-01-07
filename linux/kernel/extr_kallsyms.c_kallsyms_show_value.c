
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SYSLOG ;
 int current ;
 int has_capability_noaudit (int ,int ) ;
 int kallsyms_for_perf () ;
 int kptr_restrict ;

int kallsyms_show_value(void)
{
 switch (kptr_restrict) {
 case 0:
  if (kallsyms_for_perf())
   return 1;

 case 1:
  if (has_capability_noaudit(current, CAP_SYSLOG))
   return 1;

 default:
  return 0;
 }
}
