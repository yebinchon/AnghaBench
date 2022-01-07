
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_lock_resource {int owner; int spinlock; } ;
struct dlm_ctxt {int dummy; } ;


 int assert_spin_locked (int *) ;

__attribute__((used)) static inline void dlm_set_lockres_owner(struct dlm_ctxt *dlm,
      struct dlm_lock_resource *res,
      u8 owner)
{
 assert_spin_locked(&res->spinlock);

 res->owner = owner;
}
