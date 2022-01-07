
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_extlen_t ;
typedef int xfs_agblock_t ;
struct TYPE_2__ {int agf_bp; int cnt_cur; } ;
struct xfs_scrub {TYPE_1__ sa; } ;
struct xfs_agf {scalar_t__ agf_freeblks; int agf_longest; } ;


 struct xfs_agf* XFS_BUF_TO_AGF (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int xchk_block_xref_set_corrupt (struct xfs_scrub*,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,int *) ;
 int xfs_alloc_get_rec (int ,int *,scalar_t__*,int*) ;
 int xfs_alloc_lookup_le (int ,int ,unsigned int,int*) ;

__attribute__((used)) static inline void
xchk_agf_xref_cntbt(
 struct xfs_scrub *sc)
{
 struct xfs_agf *agf = XFS_BUF_TO_AGF(sc->sa.agf_bp);
 xfs_agblock_t agbno;
 xfs_extlen_t blocks;
 int have;
 int error;

 if (!sc->sa.cnt_cur)
  return;


 error = xfs_alloc_lookup_le(sc->sa.cnt_cur, 0, -1U, &have);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.cnt_cur))
  return;
 if (!have) {
  if (agf->agf_freeblks != cpu_to_be32(0))
   xchk_block_xref_set_corrupt(sc, sc->sa.agf_bp);
  return;
 }


 error = xfs_alloc_get_rec(sc->sa.cnt_cur, &agbno, &blocks, &have);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.cnt_cur))
  return;
 if (!have || blocks != be32_to_cpu(agf->agf_longest))
  xchk_block_xref_set_corrupt(sc, sc->sa.agf_bp);
}
