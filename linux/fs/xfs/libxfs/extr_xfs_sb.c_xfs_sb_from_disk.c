
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dsb_t ;
struct xfs_sb {int dummy; } ;


 int __xfs_sb_from_disk (struct xfs_sb*,int *,int) ;

void
xfs_sb_from_disk(
 struct xfs_sb *to,
 xfs_dsb_t *from)
{
 __xfs_sb_from_disk(to, from, 1);
}
