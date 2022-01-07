
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int RCU_JIFFIES_FQS_DIV ;
 int READ_ONCE (int ) ;
 scalar_t__ ULONG_MAX ;
 int WRITE_ONCE (int ,unsigned long) ;
 int jiffies_till_first_fqs ;
 int jiffies_till_next_fqs ;
 scalar_t__ jiffies_till_sched_qs ;
 int jiffies_to_sched_qs ;
 int nr_cpu_ids ;
 int pr_info (char*,unsigned long) ;

__attribute__((used)) static void adjust_jiffies_till_sched_qs(void)
{
 unsigned long j;


 if (jiffies_till_sched_qs != ULONG_MAX) {
  WRITE_ONCE(jiffies_to_sched_qs, jiffies_till_sched_qs);
  return;
 }

 j = READ_ONCE(jiffies_till_first_fqs) +
        2 * READ_ONCE(jiffies_till_next_fqs);
 if (j < HZ / 10 + nr_cpu_ids / RCU_JIFFIES_FQS_DIV)
  j = HZ / 10 + nr_cpu_ids / RCU_JIFFIES_FQS_DIV;
 pr_info("RCU calculated value of scheduler-enlistment delay is %ld jiffies.\n", j);
 WRITE_ONCE(jiffies_to_sched_qs, j);
}
