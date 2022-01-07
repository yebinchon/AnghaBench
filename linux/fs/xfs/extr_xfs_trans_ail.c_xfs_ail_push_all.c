
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_lsn_t ;
struct xfs_ail {int dummy; } ;


 scalar_t__ xfs_ail_max_lsn (struct xfs_ail*) ;
 int xfs_ail_push (struct xfs_ail*,scalar_t__) ;

void
xfs_ail_push_all(
 struct xfs_ail *ailp)
{
 xfs_lsn_t threshold_lsn = xfs_ail_max_lsn(ailp);

 if (threshold_lsn)
  xfs_ail_push(ailp, threshold_lsn);
}
