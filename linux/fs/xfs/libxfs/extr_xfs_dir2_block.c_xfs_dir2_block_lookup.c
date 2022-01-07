
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* d_ops; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_15__ {int address; } ;
typedef TYPE_3__ xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_data_hdr_t ;
struct TYPE_16__ {int namelen; int name; int inumber; } ;
typedef TYPE_4__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_block_tail_t ;
struct TYPE_17__ {int trans; int filetype; int inumber; int geo; TYPE_2__* dp; } ;
typedef TYPE_5__ xfs_da_args_t ;
struct xfs_buf {int * b_addr; } ;
struct TYPE_13__ {int (* data_get_ftype ) (TYPE_4__*) ;} ;


 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int stub1 (TYPE_4__*) ;
 int trace_xfs_dir2_block_lookup (TYPE_5__*) ;
 TYPE_3__* xfs_dir2_block_leaf_p (int *) ;
 int xfs_dir2_block_lookup_int (TYPE_5__*,struct xfs_buf**,int*) ;
 int * xfs_dir2_block_tail_p (int ,int *) ;
 int xfs_dir2_dataptr_to_off (int ,int ) ;
 int xfs_dir3_data_check (TYPE_2__*,struct xfs_buf*) ;
 int xfs_dir_cilookup_result (TYPE_5__*,int ,int ) ;
 int xfs_trans_brelse (int ,struct xfs_buf*) ;

int
xfs_dir2_block_lookup(
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

 trace_xfs_dir2_block_lookup(args);





 if ((error = xfs_dir2_block_lookup_int(args, &bp, &ent)))
  return error;
 dp = args->dp;
 hdr = bp->b_addr;
 xfs_dir3_data_check(dp, bp);
 btp = xfs_dir2_block_tail_p(args->geo, hdr);
 blp = xfs_dir2_block_leaf_p(btp);



 dep = (xfs_dir2_data_entry_t *)((char *)hdr +
   xfs_dir2_dataptr_to_off(args->geo,
      be32_to_cpu(blp[ent].address)));



 args->inumber = be64_to_cpu(dep->inumber);
 args->filetype = dp->d_ops->data_get_ftype(dep);
 error = xfs_dir_cilookup_result(args, dep->name, dep->namelen);
 xfs_trans_brelse(args->trans, bp);
 return error;
}
