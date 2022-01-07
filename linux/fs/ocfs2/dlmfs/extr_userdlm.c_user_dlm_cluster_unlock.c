
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_lock; int l_name; int l_namelen; } ;


 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int ML_ERROR ;
 int __user_dlm_cond_queue_lockres (struct user_lock_res*) ;
 int mlog (int ,char*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int user_dlm_dec_holders (struct user_lock_res*,int) ;

void user_dlm_cluster_unlock(struct user_lock_res *lockres,
        int level)
{
 if (level != DLM_LOCK_EX &&
     level != DLM_LOCK_PR) {
  mlog(ML_ERROR, "lockres %.*s: invalid request!\n",
       lockres->l_namelen, lockres->l_name);
  return;
 }

 spin_lock(&lockres->l_lock);
 user_dlm_dec_holders(lockres, level);
 __user_dlm_cond_queue_lockres(lockres);
 spin_unlock(&lockres->l_lock);
}
