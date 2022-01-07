
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int kernel_cap_t ;


 int PROCESS__GETCAP ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int selinux_state ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int selinux_capget(struct task_struct *target, kernel_cap_t *effective,
     kernel_cap_t *inheritable, kernel_cap_t *permitted)
{
 return avc_has_perm(&selinux_state,
       current_sid(), task_sid(target), SECCLASS_PROCESS,
       PROCESS__GETCAP, ((void*)0));
}
