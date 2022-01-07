
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int BINDER__SET_CONTEXT_MGR ;
 int SECCLASS_BINDER ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int selinux_state ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int selinux_binder_set_context_mgr(struct task_struct *mgr)
{
 u32 mysid = current_sid();
 u32 mgrsid = task_sid(mgr);

 return avc_has_perm(&selinux_state,
       mysid, mgrsid, SECCLASS_BINDER,
       BINDER__SET_CONTEXT_MGR, ((void*)0));
}
