
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* d_ops; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_16__ {int address; } ;
typedef TYPE_3__ xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_data_hdr_t ;
struct TYPE_17__ {int inumber; } ;
typedef TYPE_4__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_block_tail_t ;
struct TYPE_18__ {scalar_t__ inumber; int filetype; int geo; TYPE_2__* dp; } ;
typedef TYPE_5__ xfs_da_args_t ;
struct xfs_buf {int * b_addr; } ;
struct TYPE_14__ {int (* data_put_ftype ) (TYPE_4__*,int ) ;} ;


 int ASSERT (int) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int cpu_to_be64 (scalar_t__) ;
 int stub1 (TYPE_4__*,int ) ;
 int trace_xfs_dir2_block_replace (TYPE_5__*) ;
 TYPE_3__* xfs_dir2_block_leaf_p (int *) ;
 int xfs_dir2_block_lookup_int (TYPE_5__*,struct xfs_buf**,int*) ;
 int * xfs_dir2_block_tail_p (int ,int *) ;
 int xfs_dir2_data_log_entry (TYPE_5__*,struct xfs_buf*,TYPE_4__*) ;
 int xfs_dir2_dataptr_to_off (int ,int ) ;
 int xfs_dir3_data_check (TYPE_2__*,struct xfs_buf*) ;

int
xfs_dir2_block_replace(
 xfs_da_args_t *args)
{
 xfs_dir2_data_hdr_t *hdr;
 xfs_dir2_leaf_entry_t *blp;
 struct xfs_buf *bp;
 xfs_dir2_block_tail_t *btp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int ent;
 int error;

 trace_xfs_dir2_block_replace(args);





 if ((error = xfs_dir2_block_lookup_int(args, &bp, &ent))) {
  return error;
 }
 dp = args->dp;
 hdr = bp->b_addr;
 btp = xfs_dir2_block_tail_p(args->geo, hdr);
 blp = xfs_dir2_block_leaf_p(btp);



 dep = (xfs_dir2_data_entry_t *)((char *)hdr +
   xfs_dir2_dataptr_to_off(args->geo,
      be32_to_cpu(blp[ent].address)));
 ASSERT(be64_to_cpu(dep->inumber) != args->inumber);



 dep->inumber = cpu_to_be64(args->inumber);
 dp->d_ops->data_put_ftype(dep, args->filetype);
 xfs_dir2_data_log_entry(args, bp, dep);
 xfs_dir3_data_check(dp, bp);
 return 0;
}
