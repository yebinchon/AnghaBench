
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ xfs_lsn_t ;
typedef int uuid_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {int sb_uuid; int sb_meta_uuid; } ;
struct xfs_mount {TYPE_4__ m_sb; } ;
struct xfs_dsymlink_hdr {int sl_uuid; int sl_lsn; } ;
struct xfs_dsb {int sb_uuid; int sb_meta_uuid; int sb_lsn; } ;
struct xfs_dir3_blk_hdr {int uuid; int lsn; } ;
struct xfs_da_blkinfo {int magic; } ;
struct xfs_da3_blkinfo {int uuid; int lsn; } ;
struct xfs_buf {void* b_addr; } ;
struct TYPE_7__ {int bb_uuid; int bb_lsn; } ;
struct TYPE_6__ {int bb_uuid; int bb_lsn; } ;
struct TYPE_8__ {TYPE_2__ l; TYPE_1__ s; } ;
struct xfs_btree_block {TYPE_3__ bb_u; } ;
struct xfs_agi {int agi_uuid; int agi_lsn; } ;
struct xfs_agfl {int agfl_uuid; int agfl_lsn; } ;
struct xfs_agf {int agf_uuid; int agf_lsn; } ;
typedef int __be32 ;
typedef int __be16 ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int uuid_equal (int *,int *) ;
 int xfs_sb_version_hascrc (TYPE_4__*) ;
 int xfs_sb_version_hasmetauuid (TYPE_4__*) ;

__attribute__((used)) static xfs_lsn_t
xlog_recover_get_buf_lsn(
 struct xfs_mount *mp,
 struct xfs_buf *bp)
{
 uint32_t magic32;
 uint16_t magic16;
 uint16_t magicda;
 void *blk = bp->b_addr;
 uuid_t *uuid;
 xfs_lsn_t lsn = -1;


 if (!xfs_sb_version_hascrc(&mp->m_sb))
  goto recover_immediately;

 magic32 = be32_to_cpu(*(__be32 *)blk);
 switch (magic32) {
 case 151:
 case 149:
 case 150:
 case 148:
 case 130:
 case 131:
 case 133:
 case 132: {
  struct xfs_btree_block *btb = blk;

  lsn = be64_to_cpu(btb->bb_u.s.bb_lsn);
  uuid = &btb->bb_u.s.bb_uuid;
  break;
 }
 case 143:
 case 142: {
  struct xfs_btree_block *btb = blk;

  lsn = be64_to_cpu(btb->bb_u.l.bb_lsn);
  uuid = &btb->bb_u.l.bb_uuid;
  break;
 }
 case 146:
  lsn = be64_to_cpu(((struct xfs_agf *)blk)->agf_lsn);
  uuid = &((struct xfs_agf *)blk)->agf_uuid;
  break;
 case 147:
  lsn = be64_to_cpu(((struct xfs_agfl *)blk)->agfl_lsn);
  uuid = &((struct xfs_agfl *)blk)->agfl_uuid;
  break;
 case 145:
  lsn = be64_to_cpu(((struct xfs_agi *)blk)->agi_lsn);
  uuid = &((struct xfs_agi *)blk)->agi_uuid;
  break;
 case 128:
  lsn = be64_to_cpu(((struct xfs_dsymlink_hdr *)blk)->sl_lsn);
  uuid = &((struct xfs_dsymlink_hdr *)blk)->sl_uuid;
  break;
 case 139:
 case 138:
 case 137:
  lsn = be64_to_cpu(((struct xfs_dir3_blk_hdr *)blk)->lsn);
  uuid = &((struct xfs_dir3_blk_hdr *)blk)->uuid;
  break;
 case 144:







  goto recover_immediately;
 case 129:







  lsn = be64_to_cpu(((struct xfs_dsb *)blk)->sb_lsn);
  if (xfs_sb_version_hasmetauuid(&mp->m_sb))
   uuid = &((struct xfs_dsb *)blk)->sb_meta_uuid;
  else
   uuid = &((struct xfs_dsb *)blk)->sb_uuid;
  break;
 default:
  break;
 }

 if (lsn != (xfs_lsn_t)-1) {
  if (!uuid_equal(&mp->m_sb.sb_meta_uuid, uuid))
   goto recover_immediately;
  return lsn;
 }

 magicda = be16_to_cpu(((struct xfs_da_blkinfo *)blk)->magic);
 switch (magicda) {
 case 136:
 case 135:
 case 141:
  lsn = be64_to_cpu(((struct xfs_da3_blkinfo *)blk)->lsn);
  uuid = &((struct xfs_da3_blkinfo *)blk)->uuid;
  break;
 default:
  break;
 }

 if (lsn != (xfs_lsn_t)-1) {
  if (!uuid_equal(&mp->m_sb.sb_uuid, uuid))
   goto recover_immediately;
  return lsn;
 }
 magic16 = be16_to_cpu(*(__be16 *)blk);
 switch (magic16) {
 case 134:
 case 140:
  goto recover_immediately;
 default:
  break;
 }



recover_immediately:
 return (xfs_lsn_t)-1;

}
