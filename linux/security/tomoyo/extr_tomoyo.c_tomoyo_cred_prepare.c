
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tomoyo_task {TYPE_1__* old_domain_info; TYPE_1__* domain_info; } ;
struct cred {int dummy; } ;
typedef int gfp_t ;
struct TYPE_5__ {int in_execve; } ;
struct TYPE_4__ {int users; } ;


 int atomic_dec (int *) ;
 TYPE_2__* current ;
 struct tomoyo_task* tomoyo_task (TYPE_2__*) ;

__attribute__((used)) static int tomoyo_cred_prepare(struct cred *new, const struct cred *old,
          gfp_t gfp)
{

 struct tomoyo_task *s = tomoyo_task(current);

 if (s->old_domain_info && !current->in_execve) {
  atomic_dec(&s->domain_info->users);
  s->domain_info = s->old_domain_info;
  s->old_domain_info = ((void*)0);
 }
 return 0;
}
