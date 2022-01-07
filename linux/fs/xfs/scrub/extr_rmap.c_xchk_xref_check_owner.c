
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_extlen_t ;
typedef int xfs_agblock_t ;
struct TYPE_2__ {int rmap_cur; } ;
struct xfs_scrub {TYPE_1__ sa; int sm; } ;
struct xfs_owner_info {int dummy; } ;


 int xchk_btree_xref_set_corrupt (struct xfs_scrub*,int ,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,int *) ;
 scalar_t__ xchk_skip_xref (int ) ;
 int xfs_rmap_record_exists (int ,int ,int ,struct xfs_owner_info const*,int*) ;

__attribute__((used)) static inline void
xchk_xref_check_owner(
 struct xfs_scrub *sc,
 xfs_agblock_t bno,
 xfs_extlen_t len,
 const struct xfs_owner_info *oinfo,
 bool should_have_rmap)
{
 bool has_rmap;
 int error;

 if (!sc->sa.rmap_cur || xchk_skip_xref(sc->sm))
  return;

 error = xfs_rmap_record_exists(sc->sa.rmap_cur, bno, len, oinfo,
   &has_rmap);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.rmap_cur))
  return;
 if (has_rmap != should_have_rmap)
  xchk_btree_xref_set_corrupt(sc, sc->sa.rmap_cur, 0);
}
