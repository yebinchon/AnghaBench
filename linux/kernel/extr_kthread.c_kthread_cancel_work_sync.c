
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_work {int dummy; } ;


 int __kthread_cancel_work_sync (struct kthread_work*,int) ;

bool kthread_cancel_work_sync(struct kthread_work *work)
{
 return __kthread_cancel_work_sync(work, 0);
}
