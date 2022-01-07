
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mask_waiter {int mw_status; int mw_complete; } ;


 int reinit_completion (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ocfs2_wait_for_mask(struct ocfs2_mask_waiter *mw)
{
 wait_for_completion(&mw->mw_complete);

 reinit_completion(&mw->mw_complete);
 return mw->mw_status;
}
