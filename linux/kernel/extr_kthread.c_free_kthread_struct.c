
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kthread {scalar_t__ blkcg_css; } ;


 int WARN_ON_ONCE (int) ;
 int kfree (struct kthread*) ;
 struct kthread* to_kthread (struct task_struct*) ;

void free_kthread_struct(struct task_struct *k)
{
 struct kthread *kthread;





 kthread = to_kthread(k);



 kfree(kthread);
}
