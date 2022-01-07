
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_data {int delay_work; int work; int cpu; } ;


 scalar_t__ jiffies ;
 int queue_work_on (int ,int ,int *) ;
 int rcu_gp_wq ;
 int timer_reduce (int *,scalar_t__) ;

__attribute__((used)) static void srcu_queue_delayed_work_on(struct srcu_data *sdp,
           unsigned long delay)
{
 if (!delay) {
  queue_work_on(sdp->cpu, rcu_gp_wq, &sdp->work);
  return;
 }

 timer_reduce(&sdp->delay_work, jiffies + delay);
}
