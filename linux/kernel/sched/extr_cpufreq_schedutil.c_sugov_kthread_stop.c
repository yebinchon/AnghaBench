
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sugov_policy {int work_lock; int thread; int worker; TYPE_1__* policy; } ;
struct TYPE_2__ {scalar_t__ fast_switch_enabled; } ;


 int kthread_flush_worker (int *) ;
 int kthread_stop (int ) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void sugov_kthread_stop(struct sugov_policy *sg_policy)
{

 if (sg_policy->policy->fast_switch_enabled)
  return;

 kthread_flush_worker(&sg_policy->worker);
 kthread_stop(sg_policy->thread);
 mutex_destroy(&sg_policy->work_lock);
}
