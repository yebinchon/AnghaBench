
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int state; int spinlock; } ;
struct dlm_ctxt {int spinlock; } ;


 int DLM_LOCK_RES_DROPPING_REF ;
 struct dlm_lock_resource* __dlm_lookup_lockres_full (struct dlm_ctxt*,char const*,unsigned int,unsigned int) ;
 int assert_spin_locked (int *) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int mlog (int ,char*,unsigned int,char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dlm_lock_resource * __dlm_lookup_lockres(struct dlm_ctxt *dlm,
      const char *name,
      unsigned int len,
      unsigned int hash)
{
 struct dlm_lock_resource *res = ((void*)0);

 mlog(0, "%.*s\n", len, name);

 assert_spin_locked(&dlm->spinlock);

 res = __dlm_lookup_lockres_full(dlm, name, len, hash);
 if (res) {
  spin_lock(&res->spinlock);
  if (res->state & DLM_LOCK_RES_DROPPING_REF) {
   spin_unlock(&res->spinlock);
   dlm_lockres_put(res);
   return ((void*)0);
  }
  spin_unlock(&res->spinlock);
 }

 return res;
}
