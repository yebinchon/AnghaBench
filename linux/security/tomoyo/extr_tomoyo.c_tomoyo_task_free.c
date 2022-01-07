
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tomoyo_task {TYPE_2__* old_domain_info; TYPE_1__* domain_info; } ;
struct task_struct {int dummy; } ;
struct TYPE_4__ {int users; } ;
struct TYPE_3__ {int users; } ;


 int atomic_dec (int *) ;
 struct tomoyo_task* tomoyo_task (struct task_struct*) ;

__attribute__((used)) static void tomoyo_task_free(struct task_struct *task)
{
 struct tomoyo_task *s = tomoyo_task(task);

 if (s->domain_info) {
  atomic_dec(&s->domain_info->users);
  s->domain_info = ((void*)0);
 }
 if (s->old_domain_info) {
  atomic_dec(&s->old_domain_info->users);
  s->old_domain_info = ((void*)0);
 }
}
