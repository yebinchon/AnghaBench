
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ibulk {int ubuffer; } ;
struct xfs_bulkstat {int dummy; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,struct xfs_bulkstat const*,int) ;
 int xfs_ibulk_advance (struct xfs_ibulk*,int) ;

__attribute__((used)) static int
xfs_bulkstat_fmt(
 struct xfs_ibulk *breq,
 const struct xfs_bulkstat *bstat)
{
 if (copy_to_user(breq->ubuffer, bstat, sizeof(struct xfs_bulkstat)))
  return -EFAULT;
 return xfs_ibulk_advance(breq, sizeof(struct xfs_bulkstat));
}
