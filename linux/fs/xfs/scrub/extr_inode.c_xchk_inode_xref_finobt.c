
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_ino_t ;
typedef scalar_t__ xfs_agino_t ;
struct TYPE_2__ {int fino_cur; } ;
struct xfs_scrub {TYPE_1__ sa; int mp; int sm; } ;
struct xfs_inobt_rec_incore {scalar_t__ ir_startino; int ir_free; } ;


 int XFS_INOBT_MASK (scalar_t__) ;
 scalar_t__ XFS_INODES_PER_CHUNK ;
 scalar_t__ XFS_INO_TO_AGINO (int ,int ) ;
 int XFS_LOOKUP_LE ;
 int xchk_btree_xref_set_corrupt (struct xfs_scrub*,int ,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,int *) ;
 scalar_t__ xchk_skip_xref (int ) ;
 int xfs_inobt_get_rec (int ,struct xfs_inobt_rec_incore*,int*) ;
 int xfs_inobt_lookup (int ,scalar_t__,int ,int*) ;

__attribute__((used)) static void
xchk_inode_xref_finobt(
 struct xfs_scrub *sc,
 xfs_ino_t ino)
{
 struct xfs_inobt_rec_incore rec;
 xfs_agino_t agino;
 int has_record;
 int error;

 if (!sc->sa.fino_cur || xchk_skip_xref(sc->sm))
  return;

 agino = XFS_INO_TO_AGINO(sc->mp, ino);





 error = xfs_inobt_lookup(sc->sa.fino_cur, agino, XFS_LOOKUP_LE,
   &has_record);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.fino_cur) ||
     !has_record)
  return;

 error = xfs_inobt_get_rec(sc->sa.fino_cur, &rec, &has_record);
 if (!xchk_should_check_xref(sc, &error, &sc->sa.fino_cur) ||
     !has_record)
  return;





 if (rec.ir_startino > agino ||
     rec.ir_startino + XFS_INODES_PER_CHUNK <= agino)
  return;

 if (rec.ir_free & XFS_INOBT_MASK(agino - rec.ir_startino))
  xchk_btree_xref_set_corrupt(sc, sc->sa.fino_cur, 0);
}
