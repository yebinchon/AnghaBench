
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tomoyo_task {int * old_domain_info; TYPE_1__* domain_info; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int users; } ;


 int atomic_inc (int *) ;
 struct task_struct* current ;
 struct tomoyo_task* tomoyo_task (struct task_struct*) ;

__attribute__((used)) static int tomoyo_task_alloc(struct task_struct *task,
        unsigned long clone_flags)
{
 struct tomoyo_task *old = tomoyo_task(current);
 struct tomoyo_task *new = tomoyo_task(task);

 new->domain_info = old->domain_info;
 atomic_inc(&new->domain_info->users);
 new->old_domain_info = ((void*)0);
 return 0;
}
