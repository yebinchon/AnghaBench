
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int softirqs_enabled; } ;


 int FAILURE ;
 int WARN_ON (int ) ;
 TYPE_1__* current ;
 int debug_locks ;
 scalar_t__ debug_locks_verbose ;
 int expected_testcase_failures ;
 int irqs_disabled () ;
 int pr_cont (char*,...) ;
 unsigned long preempt_count () ;
 int preempt_count_set (unsigned long) ;
 int reset_locks () ;
 scalar_t__ softirq_count () ;
 int testcase_successes ;
 int testcase_total ;
 int unexpected_testcase_failures ;

__attribute__((used)) static void dotest(void (*testcase_fn)(void), int expected, int lockclass_mask)
{
 unsigned long saved_preempt_count = preempt_count();

 WARN_ON(irqs_disabled());

 testcase_fn();




 if (expected == FAILURE && debug_locks) {
  expected_testcase_failures++;
  pr_cont("failed|");
 }
 else

 if (debug_locks != expected) {
  unexpected_testcase_failures++;
  pr_cont("FAILED|");
 } else {
  testcase_successes++;
  pr_cont("  ok  |");
 }
 testcase_total++;

 if (debug_locks_verbose)
  pr_cont(" lockclass mask: %x, debug_locks: %d, expected: %d\n",
   lockclass_mask, debug_locks, expected);




 preempt_count_set(saved_preempt_count);







 reset_locks();
}
