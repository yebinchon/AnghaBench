
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_lock; } ;
struct ocfs2_lock_holder {int oh_owner_pid; int oh_list; } ;


 int list_del (int *) ;
 int put_pid (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void ocfs2_remove_holder(struct ocfs2_lock_res *lockres,
           struct ocfs2_lock_holder *oh)
{
 spin_lock(&lockres->l_lock);
 list_del(&oh->oh_list);
 spin_unlock(&lockres->l_lock);

 put_pid(oh->oh_owner_pid);
}
