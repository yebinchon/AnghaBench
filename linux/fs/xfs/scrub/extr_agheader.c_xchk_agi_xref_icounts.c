
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_agino_t ;
struct TYPE_2__ {int agi_bp; int ino_cur; } ;
struct xfs_scrub {TYPE_1__ sa; } ;
struct xfs_agi {int agi_freecount; int agi_count; } ;


 struct xfs_agi* XFS_BUF_TO_AGI (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int xchk_block_xref_set_corrupt (struct xfs_scrub*,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,int *) ;
 int xfs_ialloc_count_inodes (int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static inline void
xchk_agi_xref_icounts(
 struct xfs_scrub *sc)
{
 struct xfs_agi *agi = XFS_BUF_TO_AGI(sc->sa.agi_bp);
 xfs_agino_t icount;
 xfs_agino_t freecount;
 int error;

 if (!sc->sa.ino_cur)
  return;

 error = xfs_ialloc_count_inodes(sc->sa.ino_cur, &icount, &freecount);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.ino_cur))
  return;
 if (be32_to_cpu(agi->agi_count) != icount ||
     be32_to_cpu(agi->agi_freecount) != freecount)
  xchk_block_xref_set_corrupt(sc, sc->sa.agi_bp);
}
