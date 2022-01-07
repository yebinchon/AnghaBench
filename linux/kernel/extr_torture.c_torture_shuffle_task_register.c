
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct shuffle_task {int st_l; struct task_struct* st_t; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 struct shuffle_task* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int shuffle_task_list ;
 int shuffle_task_mutex ;

void torture_shuffle_task_register(struct task_struct *tp)
{
 struct shuffle_task *stp;

 if (WARN_ON_ONCE(tp == ((void*)0)))
  return;
 stp = kmalloc(sizeof(*stp), GFP_KERNEL);
 if (WARN_ON_ONCE(stp == ((void*)0)))
  return;
 stp->st_t = tp;
 mutex_lock(&shuffle_task_mutex);
 list_add(&stp->st_l, &shuffle_task_list);
 mutex_unlock(&shuffle_task_mutex);
}
