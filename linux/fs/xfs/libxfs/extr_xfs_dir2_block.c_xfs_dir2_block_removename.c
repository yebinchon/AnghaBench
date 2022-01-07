
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_21__ {TYPE_1__* d_ops; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef int xfs_dir2_sf_hdr_t ;
struct TYPE_22__ {int address; } ;
typedef TYPE_3__ xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_data_hdr_t ;
struct TYPE_23__ {int namelen; } ;
typedef TYPE_4__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_data_aoff_t ;
struct TYPE_24__ {int stale; } ;
typedef TYPE_5__ xfs_dir2_block_tail_t ;
struct TYPE_25__ {int geo; int * trans; TYPE_2__* dp; } ;
typedef TYPE_6__ xfs_da_args_t ;
struct xfs_buf {int * b_addr; } ;
struct TYPE_20__ {int (* data_entsize ) (int ) ;} ;


 int XFS_DIR2_NULL_DATAPTR ;
 int XFS_IFORK_DSIZE (TYPE_2__*) ;
 int be32_add_cpu (int *,int) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int stub1 (int ) ;
 int trace_xfs_dir2_block_removename (TYPE_6__*) ;
 TYPE_3__* xfs_dir2_block_leaf_p (TYPE_5__*) ;
 int xfs_dir2_block_log_leaf (int *,struct xfs_buf*,int,int) ;
 int xfs_dir2_block_log_tail (int *,struct xfs_buf*) ;
 int xfs_dir2_block_lookup_int (TYPE_6__*,struct xfs_buf**,int*) ;
 int xfs_dir2_block_sfsize (TYPE_2__*,int *,int *) ;
 TYPE_5__* xfs_dir2_block_tail_p (int ,int *) ;
 int xfs_dir2_block_to_sf (TYPE_6__*,struct xfs_buf*,int,int *) ;
 int xfs_dir2_data_freescan (TYPE_2__*,int *,int*) ;
 int xfs_dir2_data_log_header (TYPE_6__*,struct xfs_buf*) ;
 int xfs_dir2_data_make_free (TYPE_6__*,struct xfs_buf*,int ,int ,int*,int*) ;
 int xfs_dir2_dataptr_to_off (int ,int ) ;
 int xfs_dir3_data_check (TYPE_2__*,struct xfs_buf*) ;

int
xfs_dir2_block_removename(
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
 int needlog;
 int needscan;
 xfs_dir2_sf_hdr_t sfh;
 int size;
 xfs_trans_t *tp;

 trace_xfs_dir2_block_removename(args);





 if ((error = xfs_dir2_block_lookup_int(args, &bp, &ent))) {
  return error;
 }
 dp = args->dp;
 tp = args->trans;
 hdr = bp->b_addr;
 btp = xfs_dir2_block_tail_p(args->geo, hdr);
 blp = xfs_dir2_block_leaf_p(btp);



 dep = (xfs_dir2_data_entry_t *)((char *)hdr +
   xfs_dir2_dataptr_to_off(args->geo,
      be32_to_cpu(blp[ent].address)));



 needlog = needscan = 0;
 xfs_dir2_data_make_free(args, bp,
  (xfs_dir2_data_aoff_t)((char *)dep - (char *)hdr),
  dp->d_ops->data_entsize(dep->namelen), &needlog, &needscan);



 be32_add_cpu(&btp->stale, 1);
 xfs_dir2_block_log_tail(tp, bp);



 blp[ent].address = cpu_to_be32(XFS_DIR2_NULL_DATAPTR);
 xfs_dir2_block_log_leaf(tp, bp, ent, ent);



 if (needscan)
  xfs_dir2_data_freescan(dp, hdr, &needlog);
 if (needlog)
  xfs_dir2_data_log_header(args, bp);
 xfs_dir3_data_check(dp, bp);



 size = xfs_dir2_block_sfsize(dp, hdr, &sfh);
 if (size > XFS_IFORK_DSIZE(dp))
  return 0;




 return xfs_dir2_block_to_sf(args, bp, size, &sfh);
}
