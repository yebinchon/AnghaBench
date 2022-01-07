
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_extlen_t ;
typedef scalar_t__ xfs_agblock_t ;
struct TYPE_2__ {int refc_cur; } ;
struct xfs_scrub {TYPE_1__ sa; int sm; } ;
struct xfs_refcount_irec {int rc_startblock; int rc_refcount; scalar_t__ rc_blockcount; } ;


 int XFS_REFC_COW_START ;
 int xchk_btree_xref_set_corrupt (struct xfs_scrub*,int ,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,int *) ;
 scalar_t__ xchk_skip_xref (int ) ;
 int xfs_refcount_get_rec (int ,struct xfs_refcount_irec*,int*) ;
 int xfs_refcount_lookup_le (int ,scalar_t__,int*) ;

void
xchk_xref_is_cow_staging(
 struct xfs_scrub *sc,
 xfs_agblock_t agbno,
 xfs_extlen_t len)
{
 struct xfs_refcount_irec rc;
 bool has_cowflag;
 int has_refcount;
 int error;

 if (!sc->sa.refc_cur || xchk_skip_xref(sc->sm))
  return;


 error = xfs_refcount_lookup_le(sc->sa.refc_cur,
   agbno + XFS_REFC_COW_START, &has_refcount);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.refc_cur))
  return;
 if (!has_refcount) {
  xchk_btree_xref_set_corrupt(sc, sc->sa.refc_cur, 0);
  return;
 }

 error = xfs_refcount_get_rec(sc->sa.refc_cur, &rc, &has_refcount);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.refc_cur))
  return;
 if (!has_refcount) {
  xchk_btree_xref_set_corrupt(sc, sc->sa.refc_cur, 0);
  return;
 }


 has_cowflag = (rc.rc_startblock & XFS_REFC_COW_START);
 if (!has_cowflag || rc.rc_refcount != 1)
  xchk_btree_xref_set_corrupt(sc, sc->sa.refc_cur, 0);


 if (rc.rc_blockcount < len)
  xchk_btree_xref_set_corrupt(sc, sc->sa.refc_cur, 0);
}
