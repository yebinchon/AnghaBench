
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_delayed_work {int work; } ;


 int __kthread_cancel_work_sync (int *,int) ;

bool kthread_cancel_delayed_work_sync(struct kthread_delayed_work *dwork)
{
 return __kthread_cancel_work_sync(&dwork->work, 1);
}
