
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_agblock_t ;
struct TYPE_2__ {int agf_bp; int refc_cur; } ;
struct xfs_scrub {TYPE_1__ sa; } ;
struct xfs_agf {int agf_refcount_blocks; } ;


 struct xfs_agf* XFS_BUF_TO_AGF (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int xchk_block_xref_set_corrupt (struct xfs_scrub*,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,int *) ;
 int xfs_btree_count_blocks (int ,scalar_t__*) ;

__attribute__((used)) static inline void
xchk_agf_xref_refcblks(
 struct xfs_scrub *sc)
{
 struct xfs_agf *agf = XFS_BUF_TO_AGF(sc->sa.agf_bp);
 xfs_agblock_t blocks;
 int error;

 if (!sc->sa.refc_cur)
  return;

 error = xfs_btree_count_blocks(sc->sa.refc_cur, &blocks);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.refc_cur))
  return;
 if (blocks != be32_to_cpu(agf->agf_refcount_blocks))
  xchk_block_xref_set_corrupt(sc, sc->sa.agf_bp);
}
