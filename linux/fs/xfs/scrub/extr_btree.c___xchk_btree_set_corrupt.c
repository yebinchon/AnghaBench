
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {TYPE_1__* sm; } ;
struct xfs_btree_cur {int bc_flags; } ;
typedef int __u32 ;
struct TYPE_2__ {int sm_flags; } ;


 int XFS_BTREE_ROOT_IN_INODE ;
 int trace_xchk_btree_error (struct xfs_scrub*,struct xfs_btree_cur*,int,void*) ;
 int trace_xchk_ifork_btree_error (struct xfs_scrub*,struct xfs_btree_cur*,int,void*) ;

__attribute__((used)) static void
__xchk_btree_set_corrupt(
 struct xfs_scrub *sc,
 struct xfs_btree_cur *cur,
 int level,
 __u32 errflag,
 void *ret_ip)
{
 sc->sm->sm_flags |= errflag;

 if (cur->bc_flags & XFS_BTREE_ROOT_IN_INODE)
  trace_xchk_ifork_btree_error(sc, cur, level,
    ret_ip);
 else
  trace_xchk_btree_error(sc, cur, level,
    ret_ip);
}
