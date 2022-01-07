
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;


 int xfs_icount_range (struct xfs_mount*,unsigned long long*,unsigned long long*) ;

bool
xfs_verify_icount(
 struct xfs_mount *mp,
 unsigned long long icount)
{
 unsigned long long min, max;

 xfs_icount_range(mp, &min, &max);
 return icount >= min && icount <= max;
}
