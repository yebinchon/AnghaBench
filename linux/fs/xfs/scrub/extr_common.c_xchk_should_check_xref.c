
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {TYPE_1__* sm; } ;
struct xfs_btree_cur {int dummy; } ;
struct TYPE_2__ {int sm_flags; } ;


 int XFS_BTREE_ERROR ;
 int XFS_SCRUB_OFLAG_XFAIL ;
 int __return_address ;
 int trace_xchk_xref_error (struct xfs_scrub*,int,int ) ;
 scalar_t__ xchk_skip_xref (TYPE_1__*) ;
 int xfs_btree_del_cursor (struct xfs_btree_cur*,int ) ;

bool
xchk_should_check_xref(
 struct xfs_scrub *sc,
 int *error,
 struct xfs_btree_cur **curpp)
{

 if (xchk_skip_xref(sc->sm))
  return 0;

 if (*error == 0)
  return 1;

 if (curpp) {

  if (!*curpp)
   return 0;


  xfs_btree_del_cursor(*curpp, XFS_BTREE_ERROR);
  *curpp = ((void*)0);
 }

 sc->sm->sm_flags |= XFS_SCRUB_OFLAG_XFAIL;
 trace_xchk_xref_error(sc, *error, __return_address);





 *error = 0;
 return 0;
}
