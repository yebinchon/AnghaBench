
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;


 int XFS_SCRUB_OFLAG_CORRUPT ;
 int __return_address ;
 int __xchk_btree_set_corrupt (struct xfs_scrub*,struct xfs_btree_cur*,int,int ,int ) ;

void
xchk_btree_set_corrupt(
 struct xfs_scrub *sc,
 struct xfs_btree_cur *cur,
 int level)
{
 __xchk_btree_set_corrupt(sc, cur, level, XFS_SCRUB_OFLAG_CORRUPT,
   __return_address);
}
