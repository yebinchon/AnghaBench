
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ magic; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
typedef TYPE_4__ xfs_dir2_free_t ;
struct xfs_da_args {TYPE_3__* dp; int trans; } ;
struct xfs_buf {TYPE_4__* b_addr; } ;
struct TYPE_7__ {TYPE_2__* d_ops; } ;
struct TYPE_6__ {scalar_t__ free_hdr_size; } ;


 int ASSERT (int) ;
 int XFS_DIR2_FREE_MAGIC ;
 int XFS_DIR3_FREE_MAGIC ;
 scalar_t__ cpu_to_be32 (int ) ;
 int xfs_trans_log_buf (int ,struct xfs_buf*,int ,scalar_t__) ;

__attribute__((used)) static void
xfs_dir2_free_log_header(
 struct xfs_da_args *args,
 struct xfs_buf *bp)
{







 xfs_trans_log_buf(args->trans, bp, 0,
     args->dp->d_ops->free_hdr_size - 1);
}
