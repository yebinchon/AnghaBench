
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct dlm_lockstatus {struct dlm_lock* lockid; } ;
struct dlm_lock {int lksb_kernel_allocated; struct dlm_lockstatus* lksb; } ;


 int GFP_NOFS ;
 int dlm_init_lock (struct dlm_lock*,int,int ,int ) ;
 int dlm_lock_cache ;
 int kmem_cache_free (int ,struct dlm_lock*) ;
 struct dlm_lock* kmem_cache_zalloc (int ,int ) ;
 struct dlm_lockstatus* kzalloc (int,int ) ;

struct dlm_lock * dlm_new_lock(int type, u8 node, u64 cookie,
          struct dlm_lockstatus *lksb)
{
 struct dlm_lock *lock;
 int kernel_allocated = 0;

 lock = kmem_cache_zalloc(dlm_lock_cache, GFP_NOFS);
 if (!lock)
  return ((void*)0);

 if (!lksb) {

  lksb = kzalloc(sizeof(*lksb), GFP_NOFS);
  if (!lksb) {
   kmem_cache_free(dlm_lock_cache, lock);
   return ((void*)0);
  }
  kernel_allocated = 1;
 }

 dlm_init_lock(lock, type, node, cookie);
 if (kernel_allocated)
  lock->lksb_kernel_allocated = 1;
 lock->lksb = lksb;
 lksb->lockid = lock;
 return lock;
}
