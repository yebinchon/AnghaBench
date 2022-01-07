
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dlm_lock_resource {scalar_t__ owner; int spinlock; } ;
struct dlm_ctxt {int dummy; } ;


 int assert_spin_locked (int *) ;
 int dlm_set_lockres_owner (struct dlm_ctxt*,struct dlm_lock_resource*,scalar_t__) ;

__attribute__((used)) static inline void dlm_change_lockres_owner(struct dlm_ctxt *dlm,
         struct dlm_lock_resource *res,
         u8 owner)
{
 assert_spin_locked(&res->spinlock);

 if (owner != res->owner)
  dlm_set_lockres_owner(dlm, res, owner);
}
