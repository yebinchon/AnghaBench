
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;


 int XFS_SCRUB_OFLAG_XFAIL ;
 int __return_address ;
 int __xchk_btree_process_error (struct xfs_scrub*,struct xfs_btree_cur*,int,int*,int ,int ) ;

bool
xchk_btree_xref_process_error(
 struct xfs_scrub *sc,
 struct xfs_btree_cur *cur,
 int level,
 int *error)
{
 return __xchk_btree_process_error(sc, cur, level, error,
   XFS_SCRUB_OFLAG_XFAIL, __return_address);
}
