
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_15__ ;


typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_36__ {scalar_t__ di_size; } ;
struct TYPE_38__ {TYPE_2__* d_ops; TYPE_1__ i_d; int * i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef int xfs_dir2_sf_hdr_t ;
struct TYPE_39__ {int bestcount; } ;
typedef TYPE_4__ xfs_dir2_leaf_tail_t ;
struct TYPE_40__ {int magic; } ;
typedef TYPE_5__ xfs_dir2_leaf_t ;
struct xfs_dir2_leaf_entry {int address; } ;
typedef struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_db_t ;
struct TYPE_41__ {int length; int freetag; } ;
typedef TYPE_6__ xfs_dir2_data_unused_t ;
typedef TYPE_5__ xfs_dir2_data_hdr_t ;
struct TYPE_42__ {int count; scalar_t__ stale; } ;
typedef TYPE_8__ xfs_dir2_block_tail_t ;
struct TYPE_43__ {TYPE_15__* geo; int * trans; TYPE_3__* dp; } ;
typedef TYPE_9__ xfs_da_args_t ;
typedef int uint ;
struct xfs_dir3_icleaf_hdr {scalar_t__ magic; int count; int stale; } ;
struct xfs_buf {TYPE_5__* b_addr; } ;
typedef int __be16 ;
struct TYPE_37__ {int data_entry_offset; struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (TYPE_5__*) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,TYPE_5__*) ;} ;
struct TYPE_35__ {scalar_t__ blksize; int leafblk; int datablk; } ;


 int ASSERT (int) ;
 int XFS_DIR2_DATA_FREE_TAG ;
 int XFS_DIR2_DATA_MAGIC ;
 scalar_t__ XFS_DIR2_LEAF1_MAGIC ;
 int XFS_DIR2_NULL_DATAPTR ;
 int XFS_DIR3_DATA_MAGIC ;
 scalar_t__ XFS_DIR3_LEAF1_MAGIC ;
 int XFS_IFORK_DSIZE (TYPE_3__*) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int stub1 (struct xfs_dir3_icleaf_hdr*,TYPE_5__*) ;
 struct xfs_dir2_leaf_entry* stub2 (TYPE_5__*) ;
 int trace_xfs_dir2_leaf_to_block (TYPE_9__*) ;
 int xfs_da_shrink_inode (TYPE_9__*,int ,struct xfs_buf*) ;
 struct xfs_dir2_leaf_entry* xfs_dir2_block_leaf_p (TYPE_8__*) ;
 int xfs_dir2_block_log_leaf (int *,struct xfs_buf*,int ,int) ;
 int xfs_dir2_block_log_tail (int *,struct xfs_buf*) ;
 int xfs_dir2_block_sfsize (TYPE_3__*,TYPE_5__*,int *) ;
 TYPE_8__* xfs_dir2_block_tail_p (TYPE_15__*,TYPE_5__*) ;
 int xfs_dir2_block_to_sf (TYPE_9__*,struct xfs_buf*,int,int *) ;
 int xfs_dir2_data_freescan (TYPE_3__*,TYPE_5__*,int*) ;
 int xfs_dir2_data_log_header (TYPE_9__*,struct xfs_buf*) ;
 int xfs_dir2_data_use_free (TYPE_9__*,struct xfs_buf*,TYPE_6__*,int,int,int*,int*) ;
 int * xfs_dir2_leaf_bests_p (TYPE_4__*) ;
 TYPE_4__* xfs_dir2_leaf_tail_p (TYPE_15__*,TYPE_5__*) ;
 int xfs_dir2_leaf_trim_data (TYPE_9__*,struct xfs_buf*,int ) ;
 int xfs_dir3_block_init (int *,int *,struct xfs_buf*,TYPE_3__*) ;
 int xfs_dir3_data_read (int *,TYPE_3__*,int ,int,struct xfs_buf**) ;

int
xfs_dir2_leaf_to_block(
 xfs_da_args_t *args,
 struct xfs_buf *lbp,
 struct xfs_buf *dbp)
{
 __be16 *bestsp;
 xfs_dir2_data_hdr_t *hdr;
 xfs_dir2_block_tail_t *btp;
 xfs_inode_t *dp;
 xfs_dir2_data_unused_t *dup;
 int error;
 int from;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_entry_t *lep;
 xfs_dir2_leaf_tail_t *ltp;
 xfs_mount_t *mp;
 int needlog;
 int needscan;
 xfs_dir2_sf_hdr_t sfh;
 int size;
 __be16 *tagp;
 int to;
 xfs_trans_t *tp;
 struct xfs_dir2_leaf_entry *ents;
 struct xfs_dir3_icleaf_hdr leafhdr;

 trace_xfs_dir2_leaf_to_block(args);

 dp = args->dp;
 tp = args->trans;
 mp = dp->i_mount;
 leaf = lbp->b_addr;
 dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);
 ents = dp->d_ops->leaf_ents_p(leaf);
 ltp = xfs_dir2_leaf_tail_p(args->geo, leaf);

 ASSERT(leafhdr.magic == XFS_DIR2_LEAF1_MAGIC ||
        leafhdr.magic == XFS_DIR3_LEAF1_MAGIC);






 while (dp->i_d.di_size > args->geo->blksize) {
  int hdrsz;

  hdrsz = dp->d_ops->data_entry_offset;
  bestsp = xfs_dir2_leaf_bests_p(ltp);
  if (be16_to_cpu(bestsp[be32_to_cpu(ltp->bestcount) - 1]) ==
         args->geo->blksize - hdrsz) {
   if ((error =
       xfs_dir2_leaf_trim_data(args, lbp,
        (xfs_dir2_db_t)(be32_to_cpu(ltp->bestcount) - 1))))
    return error;
  } else
   return 0;
 }



 if (!dbp) {
  error = xfs_dir3_data_read(tp, dp, args->geo->datablk, -1, &dbp);
  if (error)
   return error;
 }
 hdr = dbp->b_addr;
 ASSERT(hdr->magic == cpu_to_be32(XFS_DIR2_DATA_MAGIC) ||
        hdr->magic == cpu_to_be32(XFS_DIR3_DATA_MAGIC));




 size = (uint)sizeof(xfs_dir2_block_tail_t) +
        (uint)sizeof(*lep) * (leafhdr.count - leafhdr.stale);



 tagp = (__be16 *)((char *)hdr + args->geo->blksize) - 1;
 dup = (xfs_dir2_data_unused_t *)((char *)hdr + be16_to_cpu(*tagp));



 if (be16_to_cpu(dup->freetag) != XFS_DIR2_DATA_FREE_TAG ||
     be16_to_cpu(dup->length) < size)
  return 0;




 xfs_dir3_block_init(mp, tp, dbp, dp);

 needlog = 1;
 needscan = 0;



 error = xfs_dir2_data_use_free(args, dbp, dup,
   args->geo->blksize - size, size, &needlog, &needscan);
 if (error)
  return error;



 btp = xfs_dir2_block_tail_p(args->geo, hdr);
 btp->count = cpu_to_be32(leafhdr.count - leafhdr.stale);
 btp->stale = 0;
 xfs_dir2_block_log_tail(tp, dbp);



 lep = xfs_dir2_block_leaf_p(btp);
 for (from = to = 0; from < leafhdr.count; from++) {
  if (ents[from].address == cpu_to_be32(XFS_DIR2_NULL_DATAPTR))
   continue;
  lep[to++] = ents[from];
 }
 ASSERT(to == be32_to_cpu(btp->count));
 xfs_dir2_block_log_leaf(tp, dbp, 0, be32_to_cpu(btp->count) - 1);



 if (needscan)
  xfs_dir2_data_freescan(dp, hdr, &needlog);
 if (needlog)
  xfs_dir2_data_log_header(args, dbp);



 error = xfs_da_shrink_inode(args, args->geo->leafblk, lbp);
 if (error)
  return error;




 size = xfs_dir2_block_sfsize(dp, hdr, &sfh);
 if (size > XFS_IFORK_DSIZE(dp))
  return 0;

 return xfs_dir2_block_to_sf(args, dbp, size, &sfh);
}
