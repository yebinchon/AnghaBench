
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_flags; int l_work; } ;


 int INIT_WORK (int *,int ) ;
 int USER_LOCK_QUEUED ;
 int queue_work (int ,int *) ;
 int user_dlm_grab_inode_ref (struct user_lock_res*) ;
 int user_dlm_unblock_lock ;
 int user_dlm_worker ;

__attribute__((used)) static void __user_dlm_queue_lockres(struct user_lock_res *lockres)
{
 if (!(lockres->l_flags & USER_LOCK_QUEUED)) {
  user_dlm_grab_inode_ref(lockres);

  INIT_WORK(&lockres->l_work, user_dlm_unblock_lock);

  queue_work(user_dlm_worker, &lockres->l_work);
  lockres->l_flags |= USER_LOCK_QUEUED;
 }
}
