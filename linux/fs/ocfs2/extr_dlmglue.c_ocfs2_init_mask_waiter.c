
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mask_waiter {int mw_complete; int mw_item; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_completion (int *) ;
 int ocfs2_init_start_time (struct ocfs2_mask_waiter*) ;

__attribute__((used)) static void ocfs2_init_mask_waiter(struct ocfs2_mask_waiter *mw)
{
 INIT_LIST_HEAD(&mw->mw_item);
 init_completion(&mw->mw_complete);
 ocfs2_init_start_time(mw);
}
