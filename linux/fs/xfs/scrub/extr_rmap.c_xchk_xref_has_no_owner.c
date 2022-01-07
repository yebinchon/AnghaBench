
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_extlen_t ;
typedef int xfs_agblock_t ;
struct TYPE_2__ {int rmap_cur; } ;
struct xfs_scrub {TYPE_1__ sa; int sm; } ;


 int xchk_btree_xref_set_corrupt (struct xfs_scrub*,int ,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,int *) ;
 scalar_t__ xchk_skip_xref (int ) ;
 int xfs_rmap_has_record (int ,int ,int ,int*) ;

void
xchk_xref_has_no_owner(
 struct xfs_scrub *sc,
 xfs_agblock_t bno,
 xfs_extlen_t len)
{
 bool has_rmap;
 int error;

 if (!sc->sa.rmap_cur || xchk_skip_xref(sc->sm))
  return;

 error = xfs_rmap_has_record(sc->sa.rmap_cur, bno, len, &has_rmap);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.rmap_cur))
  return;
 if (has_rmap)
  xchk_btree_xref_set_corrupt(sc, sc->sa.rmap_cur, 0);
}
