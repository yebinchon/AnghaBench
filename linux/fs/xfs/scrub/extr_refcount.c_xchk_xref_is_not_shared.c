
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_extlen_t ;
typedef int xfs_agblock_t ;
struct TYPE_2__ {int refc_cur; } ;
struct xfs_scrub {TYPE_1__ sa; int sm; } ;


 int xchk_btree_xref_set_corrupt (struct xfs_scrub*,int ,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,int *) ;
 scalar_t__ xchk_skip_xref (int ) ;
 int xfs_refcount_has_record (int ,int ,int ,int*) ;

void
xchk_xref_is_not_shared(
 struct xfs_scrub *sc,
 xfs_agblock_t agbno,
 xfs_extlen_t len)
{
 bool shared;
 int error;

 if (!sc->sa.refc_cur || xchk_skip_xref(sc->sm))
  return;

 error = xfs_refcount_has_record(sc->sa.refc_cur, agbno, len, &shared);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.refc_cur))
  return;
 if (shared)
  xchk_btree_xref_set_corrupt(sc, sc->sa.refc_cur, 0);
}
