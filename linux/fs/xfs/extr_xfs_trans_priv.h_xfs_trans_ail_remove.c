
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_log_item {int li_flags; struct xfs_ail* li_ailp; } ;
struct xfs_ail {int ail_lock; } ;


 int XFS_LI_IN_AIL ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int xfs_trans_ail_delete (struct xfs_ail*,struct xfs_log_item*,int) ;

__attribute__((used)) static inline void
xfs_trans_ail_remove(
 struct xfs_log_item *lip,
 int shutdown_type)
{
 struct xfs_ail *ailp = lip->li_ailp;

 spin_lock(&ailp->ail_lock);

 if (test_bit(XFS_LI_IN_AIL, &lip->li_flags))
  xfs_trans_ail_delete(ailp, lip, shutdown_type);
 else
  spin_unlock(&ailp->ail_lock);
}
