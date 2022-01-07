
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_lock; int l_holders; } ;
struct ocfs2_lock_holder {int oh_list; int oh_owner_pid; } ;


 int INIT_LIST_HEAD (int *) ;
 int current ;
 int get_pid (int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int task_pid (int ) ;

__attribute__((used)) static inline void ocfs2_add_holder(struct ocfs2_lock_res *lockres,
       struct ocfs2_lock_holder *oh)
{
 INIT_LIST_HEAD(&oh->oh_list);
 oh->oh_owner_pid = get_pid(task_pid(current));

 spin_lock(&lockres->l_lock);
 list_add_tail(&oh->oh_list, &lockres->l_holders);
 spin_unlock(&lockres->l_lock);
}
