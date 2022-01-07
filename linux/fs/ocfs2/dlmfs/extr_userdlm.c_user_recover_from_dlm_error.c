
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_lock; int l_flags; } ;


 int USER_LOCK_BUSY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void user_recover_from_dlm_error(struct user_lock_res *lockres)
{
 spin_lock(&lockres->l_lock);
 lockres->l_flags &= ~USER_LOCK_BUSY;
 spin_unlock(&lockres->l_lock);
}
