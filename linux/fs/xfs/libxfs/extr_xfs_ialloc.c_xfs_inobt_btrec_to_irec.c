
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ir_freecount; } ;
struct TYPE_5__ {void* ir_freecount; int ir_count; int ir_holemask; } ;
struct TYPE_7__ {TYPE_2__ f; TYPE_1__ sp; } ;
struct TYPE_8__ {int ir_free; TYPE_3__ ir_u; int ir_startino; } ;
union xfs_btree_rec {TYPE_4__ inobt; } ;
struct xfs_mount {int m_sb; } ;
struct xfs_inobt_rec_incore {int ir_free; void* ir_freecount; int ir_count; int ir_holemask; void* ir_startino; } ;


 int XFS_INOBT_HOLEMASK_FULL ;
 int XFS_INODES_PER_CHUNK ;
 int be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 scalar_t__ xfs_sb_version_hassparseinodes (int *) ;

void
xfs_inobt_btrec_to_irec(
 struct xfs_mount *mp,
 union xfs_btree_rec *rec,
 struct xfs_inobt_rec_incore *irec)
{
 irec->ir_startino = be32_to_cpu(rec->inobt.ir_startino);
 if (xfs_sb_version_hassparseinodes(&mp->m_sb)) {
  irec->ir_holemask = be16_to_cpu(rec->inobt.ir_u.sp.ir_holemask);
  irec->ir_count = rec->inobt.ir_u.sp.ir_count;
  irec->ir_freecount = rec->inobt.ir_u.sp.ir_freecount;
 } else {




  irec->ir_holemask = XFS_INOBT_HOLEMASK_FULL;
  irec->ir_count = XFS_INODES_PER_CHUNK;
  irec->ir_freecount =
    be32_to_cpu(rec->inobt.ir_u.f.ir_freecount);
 }
 irec->ir_free = be64_to_cpu(rec->inobt.ir_free);
}
