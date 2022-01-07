
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_lsn_t ;
struct xfs_log_item {int li_lsn; } ;
struct xfs_ail {int ail_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct xfs_log_item* xfs_ail_max (struct xfs_ail*) ;

__attribute__((used)) static xfs_lsn_t
xfs_ail_max_lsn(
 struct xfs_ail *ailp)
{
 xfs_lsn_t lsn = 0;
 struct xfs_log_item *lip;

 spin_lock(&ailp->ail_lock);
 lip = xfs_ail_max(ailp);
 if (lip)
  lsn = lip->li_lsn;
 spin_unlock(&ailp->ail_lock);

 return lsn;
}
