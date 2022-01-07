
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PROCESS__GETSCHED ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int selinux_state ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int selinux_task_getioprio(struct task_struct *p)
{
 return avc_has_perm(&selinux_state,
       current_sid(), task_sid(p), SECCLASS_PROCESS,
       PROCESS__GETSCHED, ((void*)0));
}
