
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct linux_binprm {int rlim_stack; } ;
struct TYPE_4__ {int group_leader; TYPE_1__* signal; } ;
struct TYPE_3__ {int * rlim; } ;


 size_t RLIMIT_STACK ;
 TYPE_2__* current ;
 int task_lock (int ) ;
 int task_unlock (int ) ;

void finalize_exec(struct linux_binprm *bprm)
{

 task_lock(current->group_leader);
 current->signal->rlim[RLIMIT_STACK] = bprm->rlim_stack;
 task_unlock(current->group_leader);
}
