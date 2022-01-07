
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct task_struct {int dummy; } ;


 int BINDER__CALL ;
 int BINDER__IMPERSONATE ;
 int SECCLASS_BINDER ;
 int avc_has_perm (int *,scalar_t__,scalar_t__,int ,int ,int *) ;
 scalar_t__ current_sid () ;
 int selinux_state ;
 scalar_t__ task_sid (struct task_struct*) ;

__attribute__((used)) static int selinux_binder_transaction(struct task_struct *from,
          struct task_struct *to)
{
 u32 mysid = current_sid();
 u32 fromsid = task_sid(from);
 u32 tosid = task_sid(to);
 int rc;

 if (mysid != fromsid) {
  rc = avc_has_perm(&selinux_state,
      mysid, fromsid, SECCLASS_BINDER,
      BINDER__IMPERSONATE, ((void*)0));
  if (rc)
   return rc;
 }

 return avc_has_perm(&selinux_state,
       fromsid, tosid, SECCLASS_BINDER, BINDER__CALL,
       ((void*)0));
}
