
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ibulk {int ubuffer; int mp; } ;
struct xfs_bulkstat {int dummy; } ;
struct xfs_bstat {int dummy; } ;
typedef int bs1 ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,struct xfs_bstat*,int) ;
 int xfs_bulkstat_to_bstat (int ,struct xfs_bstat*,struct xfs_bulkstat const*) ;
 int xfs_ibulk_advance (struct xfs_ibulk*,int) ;

int
xfs_fsbulkstat_one_fmt(
 struct xfs_ibulk *breq,
 const struct xfs_bulkstat *bstat)
{
 struct xfs_bstat bs1;

 xfs_bulkstat_to_bstat(breq->mp, &bs1, bstat);
 if (copy_to_user(breq->ubuffer, &bs1, sizeof(bs1)))
  return -EFAULT;
 return xfs_ibulk_advance(breq, sizeof(struct xfs_bstat));
}
