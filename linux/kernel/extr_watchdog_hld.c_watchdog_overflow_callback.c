
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ interrupts; } ;
struct perf_event {TYPE_1__ hw; } ;


 int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int) ;
 int current ;
 int dump_stack () ;
 int hard_watchdog_warn ;
 int hardlockup_allcpu_dumped ;
 scalar_t__ hardlockup_panic ;
 scalar_t__ is_hardlockup () ;
 int nmi_panic (struct pt_regs*,char*) ;
 int pr_emerg (char*,int) ;
 int print_irqtrace_events (int ) ;
 int print_modules () ;
 int show_regs (struct pt_regs*) ;
 int smp_processor_id () ;
 scalar_t__ sysctl_hardlockup_all_cpu_backtrace ;
 int test_and_set_bit (int ,int *) ;
 int trigger_allbutself_cpu_backtrace () ;
 int watchdog_check_timestamp () ;
 int watchdog_nmi_touch ;

__attribute__((used)) static void watchdog_overflow_callback(struct perf_event *event,
           struct perf_sample_data *data,
           struct pt_regs *regs)
{

 event->hw.interrupts = 0;

 if (__this_cpu_read(watchdog_nmi_touch) == 1) {
  __this_cpu_write(watchdog_nmi_touch, 0);
  return;
 }

 if (!watchdog_check_timestamp())
  return;







 if (is_hardlockup()) {
  int this_cpu = smp_processor_id();


  if (__this_cpu_read(hard_watchdog_warn) == 1)
   return;

  pr_emerg("Watchdog detected hard LOCKUP on cpu %d\n",
    this_cpu);
  print_modules();
  print_irqtrace_events(current);
  if (regs)
   show_regs(regs);
  else
   dump_stack();





  if (sysctl_hardlockup_all_cpu_backtrace &&
    !test_and_set_bit(0, &hardlockup_allcpu_dumped))
   trigger_allbutself_cpu_backtrace();

  if (hardlockup_panic)
   nmi_panic(regs, "Hard LOCKUP");

  __this_cpu_write(hard_watchdog_warn, 1);
  return;
 }

 __this_cpu_write(hard_watchdog_warn, 0);
 return;
}
