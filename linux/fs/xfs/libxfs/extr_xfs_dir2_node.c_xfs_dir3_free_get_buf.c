
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfs_dir2_db_t ;
struct TYPE_8__ {int geo; struct xfs_inode* dp; struct xfs_trans* trans; } ;
typedef TYPE_3__ xfs_da_args_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_9__ {int sb_meta_uuid; } ;
struct xfs_mount {TYPE_4__ m_sb; } ;
struct xfs_inode {TYPE_2__* d_ops; int i_ino; struct xfs_mount* i_mount; } ;
struct TYPE_6__ {int uuid; void* owner; void* blkno; } ;
struct xfs_dir3_icfree_hdr {int magic; TYPE_1__ hdr; } ;
struct xfs_dir3_free_hdr {int magic; TYPE_1__ hdr; } ;
struct xfs_buf {struct xfs_dir3_icfree_hdr* b_addr; int b_bn; int * b_ops; } ;
typedef int hdr ;
struct TYPE_7__ {int (* free_hdr_to_disk ) (struct xfs_dir3_icfree_hdr*,struct xfs_dir3_icfree_hdr*) ;} ;


 int XFS_BLFT_DIR_FREE_BUF ;
 int XFS_DATA_FORK ;
 int XFS_DIR2_FREE_MAGIC ;
 int XFS_DIR3_FREE_MAGIC ;
 void* cpu_to_be64 (int ) ;
 int memset (struct xfs_dir3_icfree_hdr*,int ,int) ;
 int stub1 (struct xfs_dir3_icfree_hdr*,struct xfs_dir3_icfree_hdr*) ;
 int uuid_copy (int *,int *) ;
 int xfs_da_get_buf (struct xfs_trans*,struct xfs_inode*,int ,int,struct xfs_buf**,int ) ;
 int xfs_dir2_db_to_da (int ,int ) ;
 int xfs_dir3_free_buf_ops ;
 scalar_t__ xfs_sb_version_hascrc (TYPE_4__*) ;
 int xfs_trans_buf_set_type (struct xfs_trans*,struct xfs_buf*,int ) ;

__attribute__((used)) static int
xfs_dir3_free_get_buf(
 xfs_da_args_t *args,
 xfs_dir2_db_t fbno,
 struct xfs_buf **bpp)
{
 struct xfs_trans *tp = args->trans;
 struct xfs_inode *dp = args->dp;
 struct xfs_mount *mp = dp->i_mount;
 struct xfs_buf *bp;
 int error;
 struct xfs_dir3_icfree_hdr hdr;

 error = xfs_da_get_buf(tp, dp, xfs_dir2_db_to_da(args->geo, fbno),
       -1, &bp, XFS_DATA_FORK);
 if (error)
  return error;

 xfs_trans_buf_set_type(tp, bp, XFS_BLFT_DIR_FREE_BUF);
 bp->b_ops = &xfs_dir3_free_buf_ops;





 memset(bp->b_addr, 0, sizeof(struct xfs_dir3_free_hdr));
 memset(&hdr, 0, sizeof(hdr));

 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  struct xfs_dir3_free_hdr *hdr3 = bp->b_addr;

  hdr.magic = XFS_DIR3_FREE_MAGIC;

  hdr3->hdr.blkno = cpu_to_be64(bp->b_bn);
  hdr3->hdr.owner = cpu_to_be64(dp->i_ino);
  uuid_copy(&hdr3->hdr.uuid, &mp->m_sb.sb_meta_uuid);
 } else
  hdr.magic = XFS_DIR2_FREE_MAGIC;
 dp->d_ops->free_hdr_to_disk(bp->b_addr, &hdr);
 *bpp = bp;
 return 0;
}
