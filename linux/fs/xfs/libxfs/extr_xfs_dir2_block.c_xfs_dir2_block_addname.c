
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_36__ {TYPE_1__* d_ops; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_37__ {scalar_t__ address; scalar_t__ hashval; } ;
typedef TYPE_3__ xfs_dir2_leaf_entry_t ;
struct TYPE_38__ {int length; } ;
typedef TYPE_4__ xfs_dir2_data_unused_t ;
typedef int xfs_dir2_data_hdr_t ;
struct TYPE_39__ {int name; int namelen; int inumber; } ;
typedef TYPE_5__ xfs_dir2_data_entry_t ;
typedef scalar_t__ xfs_dir2_data_aoff_t ;
struct TYPE_40__ {scalar_t__ stale; scalar_t__ count; } ;
typedef TYPE_6__ xfs_dir2_block_tail_t ;
typedef int xfs_dahash_t ;
struct TYPE_41__ {int op_flags; scalar_t__ total; int hashval; int filetype; int namelen; int name; int inumber; int geo; int * trans; TYPE_2__* dp; } ;
typedef TYPE_7__ xfs_da_args_t ;
struct xfs_buf {int * b_addr; } ;
typedef int __be16 ;
struct TYPE_35__ {int (* data_entsize ) (int ) ;int * (* data_entry_tag_p ) (TYPE_5__*) ;int (* data_put_ftype ) (TYPE_5__*,int ) ;} ;


 int ASSERT (int) ;
 int ENOSPC ;
 int XFS_DA_OP_JUSTCHECK ;
 int XFS_DIR2_NULL_DATAPTR ;
 int be16_to_cpu (int ) ;
 int be32_add_cpu (scalar_t__*,int) ;
 int be32_to_cpu (scalar_t__) ;
 int cpu_to_be16 (int) ;
 scalar_t__ cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int max (int,int) ;
 int memcpy (int ,int ,int ) ;
 int memmove (TYPE_3__*,TYPE_3__*,int) ;
 int min (int,int) ;
 int stub1 (int ) ;
 int stub2 (TYPE_5__*,int ) ;
 int * stub3 (TYPE_5__*) ;
 int trace_xfs_dir2_block_addname (TYPE_7__*) ;
 int xfs_dir2_block_compact (TYPE_7__*,struct xfs_buf*,int *,TYPE_6__*,TYPE_3__*,int*,int*,int*) ;
 TYPE_3__* xfs_dir2_block_leaf_p (TYPE_6__*) ;
 int xfs_dir2_block_log_leaf (int *,struct xfs_buf*,int,int) ;
 int xfs_dir2_block_log_tail (int *,struct xfs_buf*) ;
 int xfs_dir2_block_need_space (TYPE_2__*,int *,TYPE_6__*,TYPE_3__*,int **,TYPE_4__**,TYPE_4__**,int*,int) ;
 TYPE_6__* xfs_dir2_block_tail_p (int ,int *) ;
 int xfs_dir2_block_to_leaf (TYPE_7__*,struct xfs_buf*) ;
 int xfs_dir2_byte_to_dataptr (int) ;
 int xfs_dir2_data_freescan (TYPE_2__*,int *,int*) ;
 int xfs_dir2_data_log_entry (TYPE_7__*,struct xfs_buf*,TYPE_5__*) ;
 int xfs_dir2_data_log_header (TYPE_7__*,struct xfs_buf*) ;
 int xfs_dir2_data_use_free (TYPE_7__*,struct xfs_buf*,TYPE_4__*,scalar_t__,scalar_t__,int*,int*) ;
 int xfs_dir2_leaf_addname (TYPE_7__*) ;
 int xfs_dir3_block_read (int *,TYPE_2__*,struct xfs_buf**) ;
 int xfs_dir3_data_check (TYPE_2__*,struct xfs_buf*) ;
 int xfs_trans_brelse (int *,struct xfs_buf*) ;

int
xfs_dir2_block_addname(
 xfs_da_args_t *args)
{
 xfs_dir2_data_hdr_t *hdr;
 xfs_dir2_leaf_entry_t *blp;
 struct xfs_buf *bp;
 xfs_dir2_block_tail_t *btp;
 int compact;
 xfs_dir2_data_entry_t *dep;
 xfs_inode_t *dp;
 xfs_dir2_data_unused_t *dup;
 int error;
 xfs_dir2_data_unused_t *enddup=((void*)0);
 xfs_dahash_t hash;
 int high;
 int highstale;
 int lfloghigh=0;
 int lfloglow=0;
 int len;
 int low;
 int lowstale;
 int mid=0;
 int needlog;
 int needscan;
 __be16 *tagp;
 xfs_trans_t *tp;

 trace_xfs_dir2_block_addname(args);

 dp = args->dp;
 tp = args->trans;


 error = xfs_dir3_block_read(tp, dp, &bp);
 if (error)
  return error;

 len = dp->d_ops->data_entsize(args->namelen);




 hdr = bp->b_addr;
 btp = xfs_dir2_block_tail_p(args->geo, hdr);
 blp = xfs_dir2_block_leaf_p(btp);





 xfs_dir2_block_need_space(dp, hdr, btp, blp, &tagp, &dup,
      &enddup, &compact, len);




 if (args->op_flags & XFS_DA_OP_JUSTCHECK) {
  xfs_trans_brelse(tp, bp);
  if (!dup)
   return -ENOSPC;
  return 0;
 }




 if (!dup) {

  if (args->total == 0)
   return -ENOSPC;




  error = xfs_dir2_block_to_leaf(args, bp);
  if (error)
   return error;
  return xfs_dir2_leaf_addname(args);
 }

 needlog = needscan = 0;




 if (compact) {
  xfs_dir2_block_compact(args, bp, hdr, btp, blp, &needlog,
          &lfloghigh, &lfloglow);

  blp = xfs_dir2_block_leaf_p(btp);
 } else if (btp->stale) {




  lfloglow = be32_to_cpu(btp->count);
  lfloghigh = -1;
 }




 for (low = 0, high = be32_to_cpu(btp->count) - 1; low <= high; ) {
  mid = (low + high) >> 1;
  if ((hash = be32_to_cpu(blp[mid].hashval)) == args->hashval)
   break;
  if (hash < args->hashval)
   low = mid + 1;
  else
   high = mid - 1;
 }
 while (mid >= 0 && be32_to_cpu(blp[mid].hashval) >= args->hashval) {
  mid--;
 }



 if (!btp->stale) {
  xfs_dir2_data_aoff_t aoff;




  aoff = (xfs_dir2_data_aoff_t)((char *)enddup - (char *)hdr +
    be16_to_cpu(enddup->length) - sizeof(*blp));
  error = xfs_dir2_data_use_free(args, bp, enddup, aoff,
    (xfs_dir2_data_aoff_t)sizeof(*blp), &needlog,
    &needscan);
  if (error)
   return error;




  be32_add_cpu(&btp->count, 1);




  if (needscan) {
   xfs_dir2_data_freescan(dp, hdr, &needlog);
   needscan = 0;
  }





  blp--;
  mid++;
  if (mid)
   memmove(blp, &blp[1], mid * sizeof(*blp));
  lfloglow = 0;
  lfloghigh = mid;
 }



 else {
  for (lowstale = mid;
       lowstale >= 0 &&
   blp[lowstale].address !=
   cpu_to_be32(XFS_DIR2_NULL_DATAPTR);
       lowstale--)
   continue;
  for (highstale = mid + 1;
       highstale < be32_to_cpu(btp->count) &&
   blp[highstale].address !=
   cpu_to_be32(XFS_DIR2_NULL_DATAPTR) &&
   (lowstale < 0 || mid - lowstale > highstale - mid);
       highstale++)
   continue;



  if (lowstale >= 0 &&
      (highstale == be32_to_cpu(btp->count) ||
       mid - lowstale <= highstale - mid)) {
   if (mid - lowstale)
    memmove(&blp[lowstale], &blp[lowstale + 1],
     (mid - lowstale) * sizeof(*blp));
   lfloglow = min(lowstale, lfloglow);
   lfloghigh = max(mid, lfloghigh);
  }



  else {
   ASSERT(highstale < be32_to_cpu(btp->count));
   mid++;
   if (highstale - mid)
    memmove(&blp[mid + 1], &blp[mid],
     (highstale - mid) * sizeof(*blp));
   lfloglow = min(mid, lfloglow);
   lfloghigh = max(highstale, lfloghigh);
  }
  be32_add_cpu(&btp->stale, -1);
 }



 dep = (xfs_dir2_data_entry_t *)dup;



 blp[mid].hashval = cpu_to_be32(args->hashval);
 blp[mid].address = cpu_to_be32(xfs_dir2_byte_to_dataptr(
    (char *)dep - (char *)hdr));
 xfs_dir2_block_log_leaf(tp, bp, lfloglow, lfloghigh);



 error = xfs_dir2_data_use_free(args, bp, dup,
   (xfs_dir2_data_aoff_t)((char *)dup - (char *)hdr),
   (xfs_dir2_data_aoff_t)len, &needlog, &needscan);
 if (error)
  return error;



 dep->inumber = cpu_to_be64(args->inumber);
 dep->namelen = args->namelen;
 memcpy(dep->name, args->name, args->namelen);
 dp->d_ops->data_put_ftype(dep, args->filetype);
 tagp = dp->d_ops->data_entry_tag_p(dep);
 *tagp = cpu_to_be16((char *)dep - (char *)hdr);



 if (needscan)
  xfs_dir2_data_freescan(dp, hdr, &needlog);
 if (needlog)
  xfs_dir2_data_log_header(args, bp);
 xfs_dir2_block_log_tail(tp, bp);
 xfs_dir2_data_log_entry(args, bp, dep);
 xfs_dir3_data_check(dp, bp);
 return 0;
}
