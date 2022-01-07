
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int BINDER__TRANSFER ;
 int SECCLASS_BINDER ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int selinux_state ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int selinux_binder_transfer_binder(struct task_struct *from,
       struct task_struct *to)
{
 u32 fromsid = task_sid(from);
 u32 tosid = task_sid(to);

 return avc_has_perm(&selinux_state,
       fromsid, tosid, SECCLASS_BINDER, BINDER__TRANSFER,
       ((void*)0));
}
