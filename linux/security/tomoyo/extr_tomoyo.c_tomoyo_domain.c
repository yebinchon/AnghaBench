
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tomoyo_task {struct tomoyo_domain_info* domain_info; TYPE_1__* old_domain_info; } ;
struct tomoyo_domain_info {int dummy; } ;
struct TYPE_5__ {int in_execve; } ;
struct TYPE_4__ {int users; } ;


 int atomic_dec (int *) ;
 TYPE_2__* current ;
 struct tomoyo_task* tomoyo_task (TYPE_2__*) ;

struct tomoyo_domain_info *tomoyo_domain(void)
{
 struct tomoyo_task *s = tomoyo_task(current);

 if (s->old_domain_info && !current->in_execve) {
  atomic_dec(&s->old_domain_info->users);
  s->old_domain_info = ((void*)0);
 }
 return s->domain_info;
}
