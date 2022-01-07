
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct rlimit {scalar_t__ rlim_max; } ;
struct TYPE_2__ {struct rlimit* rlim; } ;


 int PROCESS__SETRLIMIT ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int selinux_state ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int selinux_task_setrlimit(struct task_struct *p, unsigned int resource,
  struct rlimit *new_rlim)
{
 struct rlimit *old_rlim = p->signal->rlim + resource;





 if (old_rlim->rlim_max != new_rlim->rlim_max)
  return avc_has_perm(&selinux_state,
        current_sid(), task_sid(p),
        SECCLASS_PROCESS, PROCESS__SETRLIMIT, ((void*)0));

 return 0;
}
