
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_extlen_t ;
typedef int xfs_agblock_t ;
struct TYPE_2__ {int bno_cur; } ;
struct xfs_scrub {TYPE_1__ sa; int sm; } ;


 int xchk_btree_xref_set_corrupt (struct xfs_scrub*,int ,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,int *) ;
 scalar_t__ xchk_skip_xref (int ) ;
 int xfs_alloc_has_record (int ,int ,int ,int*) ;

void
xchk_xref_is_used_space(
 struct xfs_scrub *sc,
 xfs_agblock_t agbno,
 xfs_extlen_t len)
{
 bool is_freesp;
 int error;

 if (!sc->sa.bno_cur || xchk_skip_xref(sc->sm))
  return;

 error = xfs_alloc_has_record(sc->sa.bno_cur, agbno, len, &is_freesp);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.bno_cur))
  return;
 if (is_freesp)
  xchk_btree_xref_set_corrupt(sc, sc->sa.bno_cur, 0);
}
