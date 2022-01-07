
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_holders; int l_mask_waiters; int l_blocked_list; int l_event; int l_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int memset (struct ocfs2_lock_res*,int ,int) ;
 int spin_lock_init (int *) ;

void ocfs2_lock_res_init_once(struct ocfs2_lock_res *res)
{

 memset(res, 0, sizeof(struct ocfs2_lock_res));
 spin_lock_init(&res->l_lock);
 init_waitqueue_head(&res->l_event);
 INIT_LIST_HEAD(&res->l_blocked_list);
 INIT_LIST_HEAD(&res->l_mask_waiters);
 INIT_LIST_HEAD(&res->l_holders);
}
