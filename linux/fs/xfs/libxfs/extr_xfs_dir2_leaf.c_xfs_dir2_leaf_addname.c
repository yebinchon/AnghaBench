
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_db_t ;
struct xfs_dir2_data_unused {int dummy; } ;
typedef struct xfs_dir2_data_unused xfs_dir2_data_unused_t ;
typedef int xfs_dir2_data_off_t ;
struct xfs_dir2_data_entry {int namelen; int name; int inumber; } ;
typedef struct xfs_dir2_data_entry xfs_dir2_data_entry_t ;
typedef int xfs_dir2_data_aoff_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icleaf_hdr {int count; int stale; } ;
struct xfs_dir2_leaf_tail {void* bestcount; } ;
struct xfs_dir2_leaf_entry {void* address; void* hashval; } ;
struct xfs_dir2_leaf {int dummy; } ;
typedef struct xfs_dir2_leaf xfs_dir2_data_hdr ;
struct xfs_dir2_data_free {scalar_t__ length; scalar_t__ offset; } ;
struct xfs_da_args {int hashval; int op_flags; scalar_t__ total; TYPE_2__* geo; int filetype; int name; int namelen; int inumber; struct xfs_inode* dp; struct xfs_trans* trans; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; } ;
typedef int bestsp ;
typedef scalar_t__ __be16 ;
struct TYPE_7__ {int leafblk; } ;
struct TYPE_6__ {int (* data_entsize ) (int ) ;int (* leaf_hdr_to_disk ) (struct xfs_dir2_leaf*,struct xfs_dir3_icleaf_hdr*) ;scalar_t__* (* data_entry_tag_p ) (struct xfs_dir2_data_entry*) ;int (* data_put_ftype ) (struct xfs_dir2_data_entry*,int ) ;struct xfs_dir2_data_free* (* data_bestfree_p ) (struct xfs_dir2_leaf*) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (struct xfs_dir2_leaf*) ;} ;


 int ASSERT (int) ;
 int ENOSPC ;
 int NULLDATAOFF ;
 int XFS_DA_OP_JUSTCHECK ;
 int XFS_DIR2_DATA_SPACE ;
 int XFS_DIR2_NULL_DATAPTR ;
 int be16_to_cpu (scalar_t__) ;
 int be32_add_cpu (void**,int) ;
 int be32_to_cpu (void*) ;
 scalar_t__ cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int memcpy (int ,int ,int ) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 struct xfs_dir2_leaf_entry* stub1 (struct xfs_dir2_leaf*) ;
 int stub2 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;
 int stub3 (int ) ;
 struct xfs_dir2_data_free* stub4 (struct xfs_dir2_leaf*) ;
 struct xfs_dir2_data_free* stub5 (struct xfs_dir2_leaf*) ;
 int stub6 (struct xfs_dir2_data_entry*,int ) ;
 scalar_t__* stub7 (struct xfs_dir2_data_entry*) ;
 int stub8 (struct xfs_dir2_leaf*,struct xfs_dir3_icleaf_hdr*) ;
 int trace_xfs_dir2_leaf_addname (struct xfs_da_args*) ;
 int xfs_dir2_data_freescan (struct xfs_inode*,struct xfs_dir2_leaf*,int*) ;
 int xfs_dir2_data_log_entry (struct xfs_da_args*,struct xfs_buf*,struct xfs_dir2_data_entry*) ;
 int xfs_dir2_data_log_header (struct xfs_da_args*,struct xfs_buf*) ;
 int xfs_dir2_data_use_free (struct xfs_da_args*,struct xfs_buf*,struct xfs_dir2_data_unused*,int ,int,int*,int*) ;
 int xfs_dir2_dataptr_to_db (TYPE_2__*,int) ;
 int xfs_dir2_db_off_to_dataptr (TYPE_2__*,int,int) ;
 int xfs_dir2_db_to_da (TYPE_2__*,int) ;
 int xfs_dir2_grow_inode (struct xfs_da_args*,int ,int*) ;
 scalar_t__* xfs_dir2_leaf_bests_p (struct xfs_dir2_leaf_tail*) ;
 int xfs_dir2_leaf_search_hash (struct xfs_da_args*,struct xfs_buf*) ;
 struct xfs_dir2_leaf_tail* xfs_dir2_leaf_tail_p (TYPE_2__*,struct xfs_dir2_leaf*) ;
 int xfs_dir2_leaf_to_node (struct xfs_da_args*,struct xfs_buf*) ;
 int xfs_dir2_node_addname (struct xfs_da_args*) ;
 int xfs_dir3_data_check (struct xfs_inode*,struct xfs_buf*) ;
 int xfs_dir3_data_init (struct xfs_da_args*,int,struct xfs_buf**) ;
 int xfs_dir3_data_read (struct xfs_trans*,struct xfs_inode*,int ,int,struct xfs_buf**) ;
 int xfs_dir3_leaf_check (struct xfs_inode*,struct xfs_buf*) ;
 int xfs_dir3_leaf_compact_x1 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int*,int*,int*,int*,int*) ;
 struct xfs_dir2_leaf_entry* xfs_dir3_leaf_find_entry (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int,int,int,int,int*,int*) ;
 int xfs_dir3_leaf_log_bests (struct xfs_da_args*,struct xfs_buf*,int,int) ;
 int xfs_dir3_leaf_log_ents (struct xfs_da_args*,struct xfs_buf*,int,int) ;
 int xfs_dir3_leaf_log_header (struct xfs_da_args*,struct xfs_buf*) ;
 int xfs_dir3_leaf_log_tail (struct xfs_da_args*,struct xfs_buf*) ;
 int xfs_dir3_leaf_read (struct xfs_trans*,struct xfs_inode*,int ,int,struct xfs_buf**) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

int
xfs_dir2_leaf_addname(
 struct xfs_da_args *args)
{
 struct xfs_dir3_icleaf_hdr leafhdr;
 struct xfs_trans *tp = args->trans;
 __be16 *bestsp;
 __be16 *tagp;
 struct xfs_buf *dbp;
 struct xfs_buf *lbp;
 struct xfs_dir2_leaf *leaf;
 struct xfs_inode *dp = args->dp;
 struct xfs_dir2_data_hdr *hdr;
 struct xfs_dir2_data_entry *dep;
 struct xfs_dir2_leaf_entry *lep;
 struct xfs_dir2_leaf_entry *ents;
 struct xfs_dir2_data_unused *dup;
 struct xfs_dir2_leaf_tail *ltp;
 struct xfs_dir2_data_free *bf;
 int compact;
 int error;
 int grown;
 int highstale = 0;
 int i;
 int index;
 int length;
 int lfloglow;
 int lfloghigh;
 int lowstale = 0;
 int needbytes;
 int needlog;
 int needscan;
 xfs_dir2_db_t use_block;

 trace_xfs_dir2_leaf_addname(args);

 error = xfs_dir3_leaf_read(tp, dp, args->geo->leafblk, -1, &lbp);
 if (error)
  return error;







 index = xfs_dir2_leaf_search_hash(args, lbp);
 leaf = lbp->b_addr;
 ltp = xfs_dir2_leaf_tail_p(args->geo, leaf);
 ents = dp->d_ops->leaf_ents_p(leaf);
 dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);
 bestsp = xfs_dir2_leaf_bests_p(ltp);
 length = dp->d_ops->data_entsize(args->namelen);







 for (use_block = -1, lep = &ents[index];
      index < leafhdr.count && be32_to_cpu(lep->hashval) == args->hashval;
      index++, lep++) {
  if (be32_to_cpu(lep->address) == XFS_DIR2_NULL_DATAPTR)
   continue;
  i = xfs_dir2_dataptr_to_db(args->geo, be32_to_cpu(lep->address));
  ASSERT(i < be32_to_cpu(ltp->bestcount));
  ASSERT(bestsp[i] != cpu_to_be16(NULLDATAOFF));
  if (be16_to_cpu(bestsp[i]) >= length) {
   use_block = i;
   break;
  }
 }



 if (use_block == -1) {
  for (i = 0; i < be32_to_cpu(ltp->bestcount); i++) {



   if (bestsp[i] == cpu_to_be16(NULLDATAOFF) &&
       use_block == -1)
    use_block = i;
   else if (be16_to_cpu(bestsp[i]) >= length) {
    use_block = i;
    break;
   }
  }
 }



 needbytes = 0;
 if (!leafhdr.stale)
  needbytes += sizeof(xfs_dir2_leaf_entry_t);
 if (use_block == -1)
  needbytes += sizeof(xfs_dir2_data_off_t);





 if (use_block != -1 && bestsp[use_block] == cpu_to_be16(NULLDATAOFF))
  use_block = -1;




 if ((char *)bestsp - (char *)&ents[leafhdr.count] < needbytes &&
     leafhdr.stale > 1)
  compact = 1;





 else if ((char *)bestsp - (char *)&ents[leafhdr.count] < needbytes) {



  if ((args->op_flags & XFS_DA_OP_JUSTCHECK) ||
       args->total == 0) {
   xfs_trans_brelse(tp, lbp);
   return -ENOSPC;
  }



  error = xfs_dir2_leaf_to_node(args, lbp);
  if (error)
   return error;



  return xfs_dir2_node_addname(args);
 }



 else
  compact = 0;




 if (args->op_flags & XFS_DA_OP_JUSTCHECK) {
  xfs_trans_brelse(tp, lbp);
  return use_block == -1 ? -ENOSPC : 0;
 }




 if (args->total == 0 && use_block == -1) {
  xfs_trans_brelse(tp, lbp);
  return -ENOSPC;
 }






 if (compact) {
  xfs_dir3_leaf_compact_x1(&leafhdr, ents, &index, &lowstale,
   &highstale, &lfloglow, &lfloghigh);
 }




 else if (leafhdr.stale) {
  lfloglow = leafhdr.count;
  lfloghigh = -1;
 }




 if (use_block == -1) {



  if ((error = xfs_dir2_grow_inode(args, XFS_DIR2_DATA_SPACE,
    &use_block))) {
   xfs_trans_brelse(tp, lbp);
   return error;
  }



  if ((error = xfs_dir3_data_init(args, use_block, &dbp))) {
   xfs_trans_brelse(tp, lbp);
   return error;
  }




  if (use_block >= be32_to_cpu(ltp->bestcount)) {
   bestsp--;
   memmove(&bestsp[0], &bestsp[1],
    be32_to_cpu(ltp->bestcount) * sizeof(bestsp[0]));
   be32_add_cpu(&ltp->bestcount, 1);
   xfs_dir3_leaf_log_tail(args, lbp);
   xfs_dir3_leaf_log_bests(args, lbp, 0,
      be32_to_cpu(ltp->bestcount) - 1);
  }



  else
   xfs_dir3_leaf_log_bests(args, lbp, use_block, use_block);
  hdr = dbp->b_addr;
  bf = dp->d_ops->data_bestfree_p(hdr);
  bestsp[use_block] = bf[0].length;
  grown = 1;
 } else {




  error = xfs_dir3_data_read(tp, dp,
       xfs_dir2_db_to_da(args->geo, use_block),
       -1, &dbp);
  if (error) {
   xfs_trans_brelse(tp, lbp);
   return error;
  }
  hdr = dbp->b_addr;
  bf = dp->d_ops->data_bestfree_p(hdr);
  grown = 0;
 }



 dup = (xfs_dir2_data_unused_t *)
       ((char *)hdr + be16_to_cpu(bf[0].offset));
 needscan = needlog = 0;



 error = xfs_dir2_data_use_free(args, dbp, dup,
   (xfs_dir2_data_aoff_t)((char *)dup - (char *)hdr),
   length, &needlog, &needscan);
 if (error) {
  xfs_trans_brelse(tp, lbp);
  return error;
 }



 dep = (xfs_dir2_data_entry_t *)dup;
 dep->inumber = cpu_to_be64(args->inumber);
 dep->namelen = args->namelen;
 memcpy(dep->name, args->name, dep->namelen);
 dp->d_ops->data_put_ftype(dep, args->filetype);
 tagp = dp->d_ops->data_entry_tag_p(dep);
 *tagp = cpu_to_be16((char *)dep - (char *)hdr);



 if (needscan)
  xfs_dir2_data_freescan(dp, hdr, &needlog);



 if (needlog)
  xfs_dir2_data_log_header(args, dbp);
 xfs_dir2_data_log_entry(args, dbp, dep);




 if (be16_to_cpu(bestsp[use_block]) != be16_to_cpu(bf[0].length)) {
  bestsp[use_block] = bf[0].length;
  if (!grown)
   xfs_dir3_leaf_log_bests(args, lbp, use_block, use_block);
 }

 lep = xfs_dir3_leaf_find_entry(&leafhdr, ents, index, compact, lowstale,
           highstale, &lfloglow, &lfloghigh);




 lep->hashval = cpu_to_be32(args->hashval);
 lep->address = cpu_to_be32(
    xfs_dir2_db_off_to_dataptr(args->geo, use_block,
    be16_to_cpu(*tagp)));



 dp->d_ops->leaf_hdr_to_disk(leaf, &leafhdr);
 xfs_dir3_leaf_log_header(args, lbp);
 xfs_dir3_leaf_log_ents(args, lbp, lfloglow, lfloghigh);
 xfs_dir3_leaf_check(dp, lbp);
 xfs_dir3_data_check(dp, dbp);
 return 0;
}
