
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_data {int last_fqs_resched; int softirq_snap; scalar_t__ ticks_this_gp; } ;


 int RCU_SOFTIRQ ;
 int WRITE_ONCE (int ,int ) ;
 int jiffies ;
 int kstat_softirqs_cpu (int ,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void zero_cpu_stall_ticks(struct rcu_data *rdp)
{
 rdp->ticks_this_gp = 0;
 rdp->softirq_snap = kstat_softirqs_cpu(RCU_SOFTIRQ, smp_processor_id());
 WRITE_ONCE(rdp->last_fqs_resched, jiffies);
}
