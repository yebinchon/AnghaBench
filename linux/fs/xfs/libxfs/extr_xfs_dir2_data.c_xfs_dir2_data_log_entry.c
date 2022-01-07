
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_dir2_data_entry_t ;
typedef int uint ;
struct xfs_dir2_data_hdr {scalar_t__ magic; } ;
struct xfs_da_args {TYPE_2__* dp; int trans; } ;
struct xfs_buf {struct xfs_dir2_data_hdr* b_addr; } ;
struct TYPE_4__ {TYPE_1__* d_ops; } ;
struct TYPE_3__ {scalar_t__ (* data_entry_tag_p ) (int *) ;} ;


 int ASSERT (int) ;
 int XFS_DIR2_BLOCK_MAGIC ;
 int XFS_DIR2_DATA_MAGIC ;
 int XFS_DIR3_BLOCK_MAGIC ;
 int XFS_DIR3_DATA_MAGIC ;
 scalar_t__ cpu_to_be32 (int ) ;
 scalar_t__ stub1 (int *) ;
 int xfs_trans_log_buf (int ,struct xfs_buf*,int ,int ) ;

void
xfs_dir2_data_log_entry(
 struct xfs_da_args *args,
 struct xfs_buf *bp,
 xfs_dir2_data_entry_t *dep)
{
 struct xfs_dir2_data_hdr *hdr = bp->b_addr;

 ASSERT(hdr->magic == cpu_to_be32(XFS_DIR2_DATA_MAGIC) ||
        hdr->magic == cpu_to_be32(XFS_DIR3_DATA_MAGIC) ||
        hdr->magic == cpu_to_be32(XFS_DIR2_BLOCK_MAGIC) ||
        hdr->magic == cpu_to_be32(XFS_DIR3_BLOCK_MAGIC));

 xfs_trans_log_buf(args->trans, bp, (uint)((char *)dep - (char *)hdr),
  (uint)((char *)(args->dp->d_ops->data_entry_tag_p(dep) + 1) -
         (char *)hdr - 1));
}
