
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tomoyo_task {TYPE_1__* old_domain_info; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_2__ {int users; } ;


 int atomic_dec (int *) ;
 int current ;
 struct tomoyo_task* tomoyo_task (int ) ;

__attribute__((used)) static void tomoyo_bprm_committed_creds(struct linux_binprm *bprm)
{

 struct tomoyo_task *s = tomoyo_task(current);

 atomic_dec(&s->old_domain_info->users);
 s->old_domain_info = ((void*)0);
}
