
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; } ;
typedef TYPE_1__ xfs_dir2_data_unused_t ;
typedef int xfs_dir2_data_off_t ;
struct TYPE_6__ {scalar_t__ magic; } ;
typedef TYPE_2__ xfs_dir2_data_hdr_t ;
typedef int uint ;
struct xfs_da_args {int trans; } ;
struct xfs_buf {TYPE_2__* b_addr; } ;


 int ASSERT (int) ;
 int XFS_DIR2_BLOCK_MAGIC ;
 int XFS_DIR2_DATA_MAGIC ;
 int XFS_DIR3_BLOCK_MAGIC ;
 int XFS_DIR3_DATA_MAGIC ;
 scalar_t__ cpu_to_be32 (int ) ;
 scalar_t__ xfs_dir2_data_unused_tag_p (TYPE_1__*) ;
 int xfs_trans_log_buf (int ,struct xfs_buf*,int ,int ) ;

void
xfs_dir2_data_log_unused(
 struct xfs_da_args *args,
 struct xfs_buf *bp,
 xfs_dir2_data_unused_t *dup)
{
 xfs_dir2_data_hdr_t *hdr = bp->b_addr;

 ASSERT(hdr->magic == cpu_to_be32(XFS_DIR2_DATA_MAGIC) ||
        hdr->magic == cpu_to_be32(XFS_DIR3_DATA_MAGIC) ||
        hdr->magic == cpu_to_be32(XFS_DIR2_BLOCK_MAGIC) ||
        hdr->magic == cpu_to_be32(XFS_DIR3_BLOCK_MAGIC));




 xfs_trans_log_buf(args->trans, bp, (uint)((char *)dup - (char *)hdr),
  (uint)((char *)&dup->length + sizeof(dup->length) -
         1 - (char *)hdr));



 xfs_trans_log_buf(args->trans, bp,
  (uint)((char *)xfs_dir2_data_unused_tag_p(dup) - (char *)hdr),
  (uint)((char *)xfs_dir2_data_unused_tag_p(dup) - (char *)hdr +
         sizeof(xfs_dir2_data_off_t) - 1));
}
