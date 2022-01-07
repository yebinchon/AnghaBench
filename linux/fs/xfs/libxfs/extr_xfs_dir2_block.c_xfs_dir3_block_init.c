
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct TYPE_2__ {int sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_inode {int i_ino; } ;
struct xfs_dir3_blk_hdr {void* magic; int uuid; void* owner; void* blkno; } ;
struct xfs_buf {int b_bn; int * b_ops; struct xfs_dir3_blk_hdr* b_addr; } ;


 int XFS_BLFT_DIR_BLOCK_BUF ;
 int XFS_DIR2_BLOCK_MAGIC ;
 int XFS_DIR3_BLOCK_MAGIC ;
 void* cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int ) ;
 int memset (struct xfs_dir3_blk_hdr*,int ,int) ;
 int uuid_copy (int *,int *) ;
 int xfs_dir3_block_buf_ops ;
 scalar_t__ xfs_sb_version_hascrc (TYPE_1__*) ;
 int xfs_trans_buf_set_type (struct xfs_trans*,struct xfs_buf*,int ) ;

__attribute__((used)) static void
xfs_dir3_block_init(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 struct xfs_buf *bp,
 struct xfs_inode *dp)
{
 struct xfs_dir3_blk_hdr *hdr3 = bp->b_addr;

 bp->b_ops = &xfs_dir3_block_buf_ops;
 xfs_trans_buf_set_type(tp, bp, XFS_BLFT_DIR_BLOCK_BUF);

 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  memset(hdr3, 0, sizeof(*hdr3));
  hdr3->magic = cpu_to_be32(XFS_DIR3_BLOCK_MAGIC);
  hdr3->blkno = cpu_to_be64(bp->b_bn);
  hdr3->owner = cpu_to_be64(dp->i_ino);
  uuid_copy(&hdr3->uuid, &mp->m_sb.sb_meta_uuid);
  return;

 }
 hdr3->magic = cpu_to_be32(XFS_DIR2_BLOCK_MAGIC);
}
