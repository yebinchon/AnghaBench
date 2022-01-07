
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_15__ ;


typedef int xfs_trans_t ;
struct TYPE_28__ {TYPE_1__* d_ops; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef int xfs_dir2_leaf_t ;
struct xfs_dir2_leaf_entry {int address; } ;
typedef struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_free_t ;
typedef scalar_t__ xfs_dir2_db_t ;
typedef int xfs_dir2_data_hdr_t ;
struct TYPE_29__ {int namelen; } ;
typedef TYPE_3__ xfs_dir2_data_entry_t ;
struct TYPE_30__ {scalar_t__ blkno; int index; struct xfs_buf* bp; } ;
typedef TYPE_4__ xfs_da_state_blk_t ;
struct TYPE_31__ {scalar_t__ total; TYPE_15__* geo; int * trans; TYPE_2__* dp; } ;
typedef TYPE_5__ xfs_da_args_t ;
typedef int uint ;
struct xfs_dir3_icleaf_hdr {int stale; int count; } ;
struct xfs_dir3_icfree_hdr {scalar_t__ firstdb; } ;
struct xfs_dir2_data_free {int length; } ;
struct xfs_buf {int * b_addr; } ;
typedef int ents ;
struct TYPE_27__ {scalar_t__ (* db_to_fdb ) (TYPE_15__*,scalar_t__) ;scalar_t__ (* free_max_bests ) (TYPE_15__*) ;int (* db_to_fdindex ) (TYPE_15__*,scalar_t__) ;int data_entry_offset; scalar_t__ leaf_hdr_size; int (* free_hdr_from_disk ) (struct xfs_dir3_icfree_hdr*,int *) ;int (* data_entsize ) (int ) ;struct xfs_dir2_data_free* (* data_bestfree_p ) (int *) ;int (* leaf_hdr_to_disk ) (int *,struct xfs_dir3_icleaf_hdr*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int *) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,int *) ;} ;
struct TYPE_26__ {int blksize; scalar_t__ magicpct; } ;


 int ASSERT (int) ;
 int ENOSPC ;
 int XFS_DIR2_FREE_OFFSET ;
 int XFS_DIR2_NULL_DATAPTR ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int stub1 (struct xfs_dir3_icleaf_hdr*,int *) ;
 struct xfs_dir2_leaf_entry* stub2 (int *) ;
 int stub3 (int *,struct xfs_dir3_icleaf_hdr*) ;
 struct xfs_dir2_data_free* stub4 (int *) ;
 int stub5 (int ) ;
 scalar_t__ stub6 (TYPE_15__*,scalar_t__) ;
 int stub7 (struct xfs_dir3_icfree_hdr*,int *) ;
 scalar_t__ stub8 (TYPE_15__*) ;
 int stub9 (TYPE_15__*,scalar_t__) ;
 int trace_xfs_dir2_leafn_remove (TYPE_5__*,int) ;
 scalar_t__ xfs_dir2_byte_to_db (TYPE_15__*,int ) ;
 int xfs_dir2_data_freescan (TYPE_2__*,int *,int*) ;
 int xfs_dir2_data_log_header (TYPE_5__*,struct xfs_buf*) ;
 int xfs_dir2_data_make_free (TYPE_5__*,struct xfs_buf*,int,int ,int*,int*) ;
 scalar_t__ xfs_dir2_dataptr_to_db (TYPE_15__*,int ) ;
 int xfs_dir2_dataptr_to_off (TYPE_15__*,int ) ;
 int xfs_dir2_db_to_da (TYPE_15__*,scalar_t__) ;
 int xfs_dir2_free_read (int *,TYPE_2__*,int ,struct xfs_buf**) ;
 int xfs_dir2_shrink_inode (TYPE_5__*,scalar_t__,struct xfs_buf*) ;
 int xfs_dir3_data_block_free (TYPE_5__*,int *,int *,scalar_t__,int,struct xfs_buf*,int) ;
 int xfs_dir3_data_check (TYPE_2__*,struct xfs_buf*) ;
 int xfs_dir3_leaf_check (TYPE_2__*,struct xfs_buf*) ;
 int xfs_dir3_leaf_log_ents (TYPE_5__*,struct xfs_buf*,int,int) ;
 int xfs_dir3_leaf_log_header (TYPE_5__*,struct xfs_buf*) ;

__attribute__((used)) static int
xfs_dir2_leafn_remove(
 xfs_da_args_t *args,
 struct xfs_buf *bp,
 int index,
 xfs_da_state_blk_t *dblk,
 int *rval)
{
 xfs_dir2_data_hdr_t *hdr;
 xfs_dir2_db_t db;
 struct xfs_buf *dbp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_entry_t *lep;
 int longest;
 int off;
 int needlog;
 int needscan;
 xfs_trans_t *tp;
 struct xfs_dir2_data_free *bf;
 struct xfs_dir3_icleaf_hdr leafhdr;
 struct xfs_dir2_leaf_entry *ents;

 trace_xfs_dir2_leafn_remove(args, index);

 dp = args->dp;
 tp = args->trans;
 leaf = bp->b_addr;
 dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);
 ents = dp->d_ops->leaf_ents_p(leaf);




 lep = &ents[index];




 db = xfs_dir2_dataptr_to_db(args->geo, be32_to_cpu(lep->address));
 ASSERT(dblk->blkno == db);
 off = xfs_dir2_dataptr_to_off(args->geo, be32_to_cpu(lep->address));
 ASSERT(dblk->index == off);





 leafhdr.stale++;
 dp->d_ops->leaf_hdr_to_disk(leaf, &leafhdr);
 xfs_dir3_leaf_log_header(args, bp);

 lep->address = cpu_to_be32(XFS_DIR2_NULL_DATAPTR);
 xfs_dir3_leaf_log_ents(args, bp, index, index);





 dbp = dblk->bp;
 hdr = dbp->b_addr;
 dep = (xfs_dir2_data_entry_t *)((char *)hdr + off);
 bf = dp->d_ops->data_bestfree_p(hdr);
 longest = be16_to_cpu(bf[0].length);
 needlog = needscan = 0;
 xfs_dir2_data_make_free(args, dbp, off,
  dp->d_ops->data_entsize(dep->namelen), &needlog, &needscan);




 if (needscan)
  xfs_dir2_data_freescan(dp, hdr, &needlog);
 if (needlog)
  xfs_dir2_data_log_header(args, dbp);
 xfs_dir3_data_check(dp, dbp);




 if (longest < be16_to_cpu(bf[0].length)) {
  int error;
  struct xfs_buf *fbp;
  xfs_dir2_db_t fdb;
  int findex;
  xfs_dir2_free_t *free;





  fdb = dp->d_ops->db_to_fdb(args->geo, db);
  error = xfs_dir2_free_read(tp, dp,
        xfs_dir2_db_to_da(args->geo, fdb),
        &fbp);
  if (error)
   return error;
  free = fbp->b_addr;
  findex = dp->d_ops->db_to_fdindex(args->geo, db);
  longest = be16_to_cpu(bf[0].length);




  if (longest == args->geo->blksize -
          dp->d_ops->data_entry_offset) {



   error = xfs_dir2_shrink_inode(args, db, dbp);
   if (error == 0) {
    dblk->bp = ((void*)0);
    hdr = ((void*)0);
   }





   else if (!(error == -ENOSPC && args->total == 0))
    return error;
  }




  error = xfs_dir3_data_block_free(args, hdr, free,
       fdb, findex, fbp, longest);
  if (error)
   return error;
 }

 xfs_dir3_leaf_check(dp, bp);




 *rval = (dp->d_ops->leaf_hdr_size +
   (uint)sizeof(ents[0]) * (leafhdr.count - leafhdr.stale)) <
  args->geo->magicpct;
 return 0;
}
