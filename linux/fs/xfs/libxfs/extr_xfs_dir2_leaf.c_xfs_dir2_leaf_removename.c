
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_15__ ;


struct TYPE_27__ {TYPE_1__* d_ops; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_28__ {int bestcount; } ;
typedef TYPE_3__ xfs_dir2_leaf_tail_t ;
typedef int xfs_dir2_leaf_t ;
struct xfs_dir2_leaf_entry {int address; } ;
typedef struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
typedef size_t xfs_dir2_db_t ;
typedef scalar_t__ xfs_dir2_data_off_t ;
typedef int xfs_dir2_data_hdr_t ;
struct TYPE_29__ {int namelen; } ;
typedef TYPE_4__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_data_aoff_t ;
struct TYPE_30__ {scalar_t__ total; TYPE_15__* geo; TYPE_2__* dp; } ;
typedef TYPE_5__ xfs_da_args_t ;
struct xfs_dir3_icleaf_hdr {int stale; } ;
struct xfs_dir2_data_free {scalar_t__ length; } ;
struct xfs_buf {int * b_addr; } ;
typedef scalar_t__ __be16 ;
struct TYPE_26__ {scalar_t__ data_entry_offset; int (* leaf_hdr_to_disk ) (int *,struct xfs_dir3_icleaf_hdr*) ;int (* data_entsize ) (int ) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int *) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,int *) ;struct xfs_dir2_data_free* (* data_bestfree_p ) (int *) ;} ;
struct TYPE_25__ {scalar_t__ blksize; size_t datablk; } ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int ENOSPC ;
 int NULLDATAOFF ;
 int XFS_DIR2_NULL_DATAPTR ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 int be32_add_cpu (int *,size_t) ;
 int be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int memmove (scalar_t__*,scalar_t__*,size_t) ;
 struct xfs_dir2_data_free* stub1 (int *) ;
 int stub2 (struct xfs_dir3_icleaf_hdr*,int *) ;
 struct xfs_dir2_leaf_entry* stub3 (int *) ;
 int stub4 (int ) ;
 int stub5 (int *,struct xfs_dir3_icleaf_hdr*) ;
 int trace_xfs_dir2_leaf_removename (TYPE_5__*) ;
 int xfs_dir2_data_freescan (TYPE_2__*,int *,int*) ;
 int xfs_dir2_data_log_header (TYPE_5__*,struct xfs_buf*) ;
 int xfs_dir2_data_make_free (TYPE_5__*,struct xfs_buf*,int ,int ,int*,int*) ;
 size_t xfs_dir2_dataptr_to_db (TYPE_15__*,int) ;
 int xfs_dir2_dataptr_to_off (TYPE_15__*,int) ;
 scalar_t__* xfs_dir2_leaf_bests_p (TYPE_3__*) ;
 int xfs_dir2_leaf_lookup_int (TYPE_5__*,struct xfs_buf**,int*,struct xfs_buf**) ;
 TYPE_3__* xfs_dir2_leaf_tail_p (TYPE_15__*,int *) ;
 int xfs_dir2_leaf_to_block (TYPE_5__*,struct xfs_buf*,struct xfs_buf*) ;
 int xfs_dir2_shrink_inode (TYPE_5__*,size_t,struct xfs_buf*) ;
 int xfs_dir3_data_check (TYPE_2__*,struct xfs_buf*) ;
 int xfs_dir3_leaf_check (TYPE_2__*,struct xfs_buf*) ;
 int xfs_dir3_leaf_log_bests (TYPE_5__*,struct xfs_buf*,size_t,int) ;
 int xfs_dir3_leaf_log_ents (TYPE_5__*,struct xfs_buf*,int,int) ;
 int xfs_dir3_leaf_log_header (TYPE_5__*,struct xfs_buf*) ;
 int xfs_dir3_leaf_log_tail (TYPE_5__*,struct xfs_buf*) ;

int
xfs_dir2_leaf_removename(
 xfs_da_args_t *args)
{
 __be16 *bestsp;
 xfs_dir2_data_hdr_t *hdr;
 xfs_dir2_db_t db;
 struct xfs_buf *dbp;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 int error;
 xfs_dir2_db_t i;
 int index;
 struct xfs_buf *lbp;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_entry_t *lep;
 xfs_dir2_leaf_tail_t *ltp;
 int needlog;
 int needscan;
 xfs_dir2_data_off_t oldbest;
 struct xfs_dir2_data_free *bf;
 struct xfs_dir2_leaf_entry *ents;
 struct xfs_dir3_icleaf_hdr leafhdr;

 trace_xfs_dir2_leaf_removename(args);




 if ((error = xfs_dir2_leaf_lookup_int(args, &lbp, &index, &dbp))) {
  return error;
 }
 dp = args->dp;
 leaf = lbp->b_addr;
 hdr = dbp->b_addr;
 xfs_dir3_data_check(dp, dbp);
 bf = dp->d_ops->data_bestfree_p(hdr);
 dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);
 ents = dp->d_ops->leaf_ents_p(leaf);



 lep = &ents[index];
 db = xfs_dir2_dataptr_to_db(args->geo, be32_to_cpu(lep->address));
 dep = (xfs_dir2_data_entry_t *)((char *)hdr +
  xfs_dir2_dataptr_to_off(args->geo, be32_to_cpu(lep->address)));
 needscan = needlog = 0;
 oldbest = be16_to_cpu(bf[0].length);
 ltp = xfs_dir2_leaf_tail_p(args->geo, leaf);
 bestsp = xfs_dir2_leaf_bests_p(ltp);
 if (be16_to_cpu(bestsp[db]) != oldbest)
  return -EFSCORRUPTED;



 xfs_dir2_data_make_free(args, dbp,
  (xfs_dir2_data_aoff_t)((char *)dep - (char *)hdr),
  dp->d_ops->data_entsize(dep->namelen), &needlog, &needscan);



 leafhdr.stale++;
 dp->d_ops->leaf_hdr_to_disk(leaf, &leafhdr);
 xfs_dir3_leaf_log_header(args, lbp);

 lep->address = cpu_to_be32(XFS_DIR2_NULL_DATAPTR);
 xfs_dir3_leaf_log_ents(args, lbp, index, index);





 if (needscan)
  xfs_dir2_data_freescan(dp, hdr, &needlog);
 if (needlog)
  xfs_dir2_data_log_header(args, dbp);




 if (be16_to_cpu(bf[0].length) != oldbest) {
  bestsp[db] = bf[0].length;
  xfs_dir3_leaf_log_bests(args, lbp, db, db);
 }
 xfs_dir3_data_check(dp, dbp);



 if (be16_to_cpu(bf[0].length) ==
   args->geo->blksize - dp->d_ops->data_entry_offset) {
  ASSERT(db != args->geo->datablk);
  if ((error = xfs_dir2_shrink_inode(args, db, dbp))) {






   if (error == -ENOSPC && args->total == 0)
    error = 0;
   xfs_dir3_leaf_check(dp, lbp);
   return error;
  }
  dbp = ((void*)0);




  if (db == be32_to_cpu(ltp->bestcount) - 1) {



   for (i = db - 1; i > 0; i--) {
    if (bestsp[i] != cpu_to_be16(NULLDATAOFF))
     break;
   }




   memmove(&bestsp[db - i], bestsp,
    (be32_to_cpu(ltp->bestcount) - (db - i)) * sizeof(*bestsp));
   be32_add_cpu(&ltp->bestcount, -(db - i));
   xfs_dir3_leaf_log_tail(args, lbp);
   xfs_dir3_leaf_log_bests(args, lbp, 0,
      be32_to_cpu(ltp->bestcount) - 1);
  } else
   bestsp[db] = cpu_to_be16(NULLDATAOFF);
 }



 else if (db != args->geo->datablk)
  dbp = ((void*)0);

 xfs_dir3_leaf_check(dp, lbp);



 return xfs_dir2_leaf_to_block(args, lbp, dbp);
}
