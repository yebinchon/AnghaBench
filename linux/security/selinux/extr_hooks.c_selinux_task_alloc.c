
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int PROCESS__FORK ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int selinux_state ;

__attribute__((used)) static int selinux_task_alloc(struct task_struct *task,
         unsigned long clone_flags)
{
 u32 sid = current_sid();

 return avc_has_perm(&selinux_state,
       sid, sid, SECCLASS_PROCESS, PROCESS__FORK, ((void*)0));
}
