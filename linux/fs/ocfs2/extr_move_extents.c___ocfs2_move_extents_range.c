
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_super {int s_clustersize_bits; int sb; } ;
struct ocfs2_move_extents_context {int auto_defrag; int clusters_moved; int new_phys_cpos; int dealloc; int et; int refcount_loc; struct ocfs2_move_extents* range; struct inode* inode; } ;
struct ocfs2_move_extents {int me_len; int me_start; int me_threshold; void* me_new_offset; void* me_moved_len; int me_flags; int me_goal; } ;
struct ocfs2_dinode {int i_refcount_loc; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int ip_dyn_features; scalar_t__ ip_blkno; } ;


 int INODE_CACHE (struct inode*) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int OCFS2_MOVE_EXT_FL_COMPLETE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int le64_to_cpu (int ) ;
 int mlog (int ,char*,int,int,int,int,...) ;
 int mlog_errno (int) ;
 int ocfs2_blocks_to_clusters (int ,int ) ;
 int ocfs2_calc_extent_defrag_len (int*,int*,int,int*) ;
 int ocfs2_clusters_for_bytes (int ,int) ;
 void* ocfs2_clusters_to_bytes (int ,int) ;
 int ocfs2_defrag_extent (struct ocfs2_move_extents_context*,int,int,int*,int) ;
 int ocfs2_get_clusters (struct inode*,int,int*,int*,int*) ;
 int ocfs2_init_dealloc_ctxt (int *) ;
 int ocfs2_init_dinode_extent_tree (int *,int ,struct buffer_head*) ;
 int ocfs2_move_extent (struct ocfs2_move_extents_context*,int,int,int*,int,int) ;
 int ocfs2_run_deallocs (struct ocfs2_super*,int *) ;
 int ocfs2_schedule_truncate_log_flush (struct ocfs2_super*,int) ;

__attribute__((used)) static int __ocfs2_move_extents_range(struct buffer_head *di_bh,
    struct ocfs2_move_extents_context *context)
{
 int ret = 0, flags, do_defrag, skip = 0;
 u32 cpos, phys_cpos, move_start, len_to_move, alloc_size;
 u32 len_defraged = 0, defrag_thresh = 0, new_phys_cpos = 0;

 struct inode *inode = context->inode;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_move_extents *range = context->range;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 if ((i_size_read(inode) == 0) || (range->me_len == 0))
  return 0;

 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
  return 0;

 context->refcount_loc = le64_to_cpu(di->i_refcount_loc);

 ocfs2_init_dinode_extent_tree(&context->et, INODE_CACHE(inode), di_bh);
 ocfs2_init_dealloc_ctxt(&context->dealloc);







 do_defrag = context->auto_defrag;






 move_start = ocfs2_clusters_for_bytes(osb->sb, range->me_start);
 len_to_move = (range->me_start + range->me_len) >>
      osb->s_clustersize_bits;
 if (len_to_move >= move_start)
  len_to_move -= move_start;
 else
  len_to_move = 0;

 if (do_defrag) {
  defrag_thresh = range->me_threshold >> osb->s_clustersize_bits;
  if (defrag_thresh <= 1)
   goto done;
 } else
  new_phys_cpos = ocfs2_blocks_to_clusters(inode->i_sb,
        range->me_goal);

 mlog(0, "Inode: %llu, start: %llu, len: %llu, cstart: %u, clen: %u, "
      "thresh: %u\n",
      (unsigned long long)OCFS2_I(inode)->ip_blkno,
      (unsigned long long)range->me_start,
      (unsigned long long)range->me_len,
      move_start, len_to_move, defrag_thresh);

 cpos = move_start;
 while (len_to_move) {
  ret = ocfs2_get_clusters(inode, cpos, &phys_cpos, &alloc_size,
      &flags);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  if (alloc_size > len_to_move)
   alloc_size = len_to_move;







  if (!phys_cpos) {
   if (do_defrag)
    len_defraged = 0;

   goto next;
  }

  if (do_defrag) {
   ocfs2_calc_extent_defrag_len(&alloc_size, &len_defraged,
           defrag_thresh, &skip);



   if (skip) {
    skip = 0;
    goto next;
   }

   mlog(0, "#Defrag: cpos: %u, phys_cpos: %u, "
        "alloc_size: %u, len_defraged: %u\n",
        cpos, phys_cpos, alloc_size, len_defraged);

   ret = ocfs2_defrag_extent(context, cpos, phys_cpos,
        &alloc_size, flags);
  } else {
   ret = ocfs2_move_extent(context, cpos, phys_cpos,
      &new_phys_cpos, alloc_size,
      flags);

   new_phys_cpos += alloc_size;
  }

  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }

  context->clusters_moved += alloc_size;
next:
  cpos += alloc_size;
  len_to_move -= alloc_size;
 }

done:
 range->me_flags |= OCFS2_MOVE_EXT_FL_COMPLETE;

out:
 range->me_moved_len = ocfs2_clusters_to_bytes(osb->sb,
            context->clusters_moved);
 range->me_new_offset = ocfs2_clusters_to_bytes(osb->sb,
             context->new_phys_cpos);

 ocfs2_schedule_truncate_log_flush(osb, 1);
 ocfs2_run_deallocs(osb, &context->dealloc);

 return ret;
}
