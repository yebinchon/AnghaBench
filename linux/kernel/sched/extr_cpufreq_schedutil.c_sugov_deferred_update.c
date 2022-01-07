
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sugov_policy {int work_in_progress; int irq_work; } ;


 int irq_work_queue (int *) ;
 int sugov_update_next_freq (struct sugov_policy*,int ,unsigned int) ;

__attribute__((used)) static void sugov_deferred_update(struct sugov_policy *sg_policy, u64 time,
      unsigned int next_freq)
{
 if (!sugov_update_next_freq(sg_policy, time, next_freq))
  return;

 if (!sg_policy->work_in_progress) {
  sg_policy->work_in_progress = 1;
  irq_work_queue(&sg_policy->irq_work);
 }
}
