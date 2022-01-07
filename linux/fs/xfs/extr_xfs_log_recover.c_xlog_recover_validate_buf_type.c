
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_lsn_t ;
typedef int xfs_buf_log_format_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct xfs_mount {int m_sb; } ;
struct xfs_da_blkinfo {int magic; } ;
struct TYPE_2__ {scalar_t__ li_lsn; } ;
struct xfs_buf_log_item {TYPE_1__ bli_item; } ;
struct xfs_buf {scalar_t__ b_iodone; struct xfs_buf_log_item* b_log_item; int * b_ops; struct xfs_da_blkinfo* b_addr; } ;
typedef int __be32 ;
typedef int __be16 ;


 int ASSERT (int) ;
 scalar_t__ NULLCOMMITLSN ;




 int XFS_AGFL_MAGIC ;
 int XFS_AGF_MAGIC ;
 int XFS_AGI_MAGIC ;
 int XFS_ATTR3_LEAF_MAGIC ;
 int XFS_ATTR3_RMT_MAGIC ;
 int XFS_ATTR_LEAF_MAGIC ;
 int XFS_DA3_NODE_MAGIC ;
 int XFS_DA_NODE_MAGIC ;
 int XFS_DINODE_MAGIC ;
 int XFS_DIR2_BLOCK_MAGIC ;
 int XFS_DIR2_DATA_MAGIC ;
 int XFS_DIR2_FREE_MAGIC ;
 int XFS_DIR2_LEAF1_MAGIC ;
 int XFS_DIR2_LEAFN_MAGIC ;
 int XFS_DIR3_BLOCK_MAGIC ;
 int XFS_DIR3_DATA_MAGIC ;
 int XFS_DIR3_FREE_MAGIC ;
 int XFS_DIR3_LEAF1_MAGIC ;
 int XFS_DIR3_LEAFN_MAGIC ;
 int XFS_DQUOT_MAGIC ;






 int XFS_SB_MAGIC ;
 int XFS_SYMLINK_MAGIC ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int xfs_agf_buf_ops ;
 int xfs_agfl_buf_ops ;
 int xfs_agi_buf_ops ;
 int xfs_alert (struct xfs_mount*,char*) ;
 int xfs_attr3_leaf_buf_ops ;
 int xfs_attr3_rmt_buf_ops ;
 int xfs_blft_from_flags (int *) ;
 int xfs_bmbt_buf_ops ;
 int xfs_bnobt_buf_ops ;
 int xfs_buf_item_init (struct xfs_buf*,struct xfs_mount*) ;
 int xfs_cntbt_buf_ops ;
 int xfs_da3_node_buf_ops ;
 int xfs_dir3_block_buf_ops ;
 int xfs_dir3_data_buf_ops ;
 int xfs_dir3_free_buf_ops ;
 int xfs_dir3_leaf1_buf_ops ;
 int xfs_dir3_leafn_buf_ops ;
 int xfs_dquot_buf_ops ;
 int xfs_finobt_buf_ops ;
 int xfs_inobt_buf_ops ;
 int xfs_inode_buf_ops ;
 int xfs_refcountbt_buf_ops ;
 int xfs_rmapbt_buf_ops ;
 int xfs_rtbuf_ops ;
 int xfs_sb_buf_ops ;
 int xfs_sb_version_hascrc (int *) ;
 int xfs_symlink_buf_ops ;
 int xfs_warn (struct xfs_mount*,char*,...) ;
 scalar_t__ xlog_recover_iodone ;

__attribute__((used)) static void
xlog_recover_validate_buf_type(
 struct xfs_mount *mp,
 struct xfs_buf *bp,
 xfs_buf_log_format_t *buf_f,
 xfs_lsn_t current_lsn)
{
 struct xfs_da_blkinfo *info = bp->b_addr;
 uint32_t magic32;
 uint16_t magic16;
 uint16_t magicda;
 char *warnmsg = ((void*)0);
 if (!xfs_sb_version_hascrc(&mp->m_sb))
  return;

 magic32 = be32_to_cpu(*(__be32 *)bp->b_addr);
 magic16 = be16_to_cpu(*(__be16*)bp->b_addr);
 magicda = be16_to_cpu(info->magic);
 switch (xfs_blft_from_flags(buf_f)) {
 case 150:
  switch (magic32) {
  case 159:
  case 158:
   bp->b_ops = &xfs_bnobt_buf_ops;
   break;
  case 157:
  case 156:
   bp->b_ops = &xfs_cntbt_buf_ops;
   break;
  case 131:
  case 130:
   bp->b_ops = &xfs_inobt_buf_ops;
   break;
  case 133:
  case 132:
   bp->b_ops = &xfs_finobt_buf_ops;
   break;
  case 135:
  case 134:
   bp->b_ops = &xfs_bmbt_buf_ops;
   break;
  case 128:
   bp->b_ops = &xfs_rmapbt_buf_ops;
   break;
  case 129:
   bp->b_ops = &xfs_refcountbt_buf_ops;
   break;
  default:
   warnmsg = "Bad btree block magic!";
   break;
  }
  break;
 case 154:
  if (magic32 != XFS_AGF_MAGIC) {
   warnmsg = "Bad AGF block magic!";
   break;
  }
  bp->b_ops = &xfs_agf_buf_ops;
  break;
 case 155:
  if (magic32 != XFS_AGFL_MAGIC) {
   warnmsg = "Bad AGFL block magic!";
   break;
  }
  bp->b_ops = &xfs_agfl_buf_ops;
  break;
 case 153:
  if (magic32 != XFS_AGI_MAGIC) {
   warnmsg = "Bad AGI block magic!";
   break;
  }
  bp->b_ops = &xfs_agi_buf_ops;
  break;
 case 136:
 case 141:
 case 142:







  xfs_alert(mp,
 "Trying to recover dquots without QUOTA support built in!");
  ASSERT(0);

  break;
 case 148:
  if (magic16 != XFS_DINODE_MAGIC) {
   warnmsg = "Bad INODE block magic!";
   break;
  }
  bp->b_ops = &xfs_inode_buf_ops;
  break;
 case 137:
  if (magic32 != XFS_SYMLINK_MAGIC) {
   warnmsg = "Bad symlink block magic!";
   break;
  }
  bp->b_ops = &xfs_symlink_buf_ops;
  break;
 case 147:
  if (magic32 != XFS_DIR2_BLOCK_MAGIC &&
      magic32 != XFS_DIR3_BLOCK_MAGIC) {
   warnmsg = "Bad dir block magic!";
   break;
  }
  bp->b_ops = &xfs_dir3_block_buf_ops;
  break;
 case 146:
  if (magic32 != XFS_DIR2_DATA_MAGIC &&
      magic32 != XFS_DIR3_DATA_MAGIC) {
   warnmsg = "Bad dir data magic!";
   break;
  }
  bp->b_ops = &xfs_dir3_data_buf_ops;
  break;
 case 145:
  if (magic32 != XFS_DIR2_FREE_MAGIC &&
      magic32 != XFS_DIR3_FREE_MAGIC) {
   warnmsg = "Bad dir3 free magic!";
   break;
  }
  bp->b_ops = &xfs_dir3_free_buf_ops;
  break;
 case 144:
  if (magicda != XFS_DIR2_LEAF1_MAGIC &&
      magicda != XFS_DIR3_LEAF1_MAGIC) {
   warnmsg = "Bad dir leaf1 magic!";
   break;
  }
  bp->b_ops = &xfs_dir3_leaf1_buf_ops;
  break;
 case 143:
  if (magicda != XFS_DIR2_LEAFN_MAGIC &&
      magicda != XFS_DIR3_LEAFN_MAGIC) {
   warnmsg = "Bad dir leafn magic!";
   break;
  }
  bp->b_ops = &xfs_dir3_leafn_buf_ops;
  break;
 case 149:
  if (magicda != XFS_DA_NODE_MAGIC &&
      magicda != XFS_DA3_NODE_MAGIC) {
   warnmsg = "Bad da node magic!";
   break;
  }
  bp->b_ops = &xfs_da3_node_buf_ops;
  break;
 case 152:
  if (magicda != XFS_ATTR_LEAF_MAGIC &&
      magicda != XFS_ATTR3_LEAF_MAGIC) {
   warnmsg = "Bad attr leaf magic!";
   break;
  }
  bp->b_ops = &xfs_attr3_leaf_buf_ops;
  break;
 case 151:
  if (magic32 != XFS_ATTR3_RMT_MAGIC) {
   warnmsg = "Bad attr remote magic!";
   break;
  }
  bp->b_ops = &xfs_attr3_rmt_buf_ops;
  break;
 case 138:
  if (magic32 != XFS_SB_MAGIC) {
   warnmsg = "Bad SB block magic!";
   break;
  }
  bp->b_ops = &xfs_sb_buf_ops;
  break;







 default:
  xfs_warn(mp, "Unknown buffer type %d!",
    xfs_blft_from_flags(buf_f));
  break;
 }






 if (current_lsn == NULLCOMMITLSN)
  return;

 if (warnmsg) {
  xfs_warn(mp, warnmsg);
  ASSERT(0);
 }
 if (bp->b_ops) {
  struct xfs_buf_log_item *bip;

  ASSERT(!bp->b_iodone || bp->b_iodone == xlog_recover_iodone);
  bp->b_iodone = xlog_recover_iodone;
  xfs_buf_item_init(bp, mp);
  bip = bp->b_log_item;
  bip->bli_item.li_lsn = current_lsn;
 }
}
