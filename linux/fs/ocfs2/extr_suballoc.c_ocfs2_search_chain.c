
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
typedef size_t u16 ;
struct ocfs2_suballoc_result {int sr_bits; int sr_bit_offset; int sr_bg_stable_blkno; scalar_t__ sr_bg_blkno; } ;
struct ocfs2_group_desc {int bg_free_bits_count; int bg_blkno; int bg_next_group; } ;
struct TYPE_7__ {int i_chain; } ;
struct ocfs2_dinode {int i_blkno; TYPE_1__ id2; } ;
struct ocfs2_chain_list {TYPE_2__* cl_recs; } ;
struct ocfs2_alloc_context {size_t ac_chain; int (* ac_group_search ) (struct inode*,struct buffer_head*,int ,int ,int ,struct ocfs2_suballoc_result*) ;TYPE_3__* ac_bh; scalar_t__ ac_find_loc_only; int ac_disable_chain_relink; int ac_max_block; struct inode* ac_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_10__ {scalar_t__ ip_blkno; } ;
struct TYPE_9__ {scalar_t__ b_data; } ;
struct TYPE_8__ {int c_blkno; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 TYPE_6__* OCFS2_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_alloc_dinode_update_counts (struct inode*,int *,TYPE_3__*,int ,size_t) ;
 int ocfs2_bg_discontig_fix_result (struct ocfs2_alloc_context*,struct ocfs2_group_desc*,struct ocfs2_suballoc_result*) ;
 scalar_t__ ocfs2_block_group_reasonably_empty (struct ocfs2_group_desc*,int ) ;
 int ocfs2_block_group_set_bits (int *,struct inode*,struct ocfs2_group_desc*,struct buffer_head*,int ,int ) ;
 int ocfs2_read_group_descriptor (struct inode*,struct ocfs2_dinode*,scalar_t__,struct buffer_head**) ;
 int ocfs2_relink_block_group (int *,struct inode*,TYPE_3__*,struct buffer_head*,struct buffer_head*,size_t) ;
 int ocfs2_rollback_alloc_dinode_counts (struct inode*,TYPE_3__*,int ,size_t) ;
 int stub1 (struct inode*,struct buffer_head*,int ,int ,int ,struct ocfs2_suballoc_result*) ;
 int trace_ocfs2_search_chain_begin (unsigned long long,int ,size_t) ;
 int trace_ocfs2_search_chain_end (unsigned long long,int ) ;
 int trace_ocfs2_search_chain_succ (unsigned long long,int ) ;

__attribute__((used)) static int ocfs2_search_chain(struct ocfs2_alloc_context *ac,
         handle_t *handle,
         u32 bits_wanted,
         u32 min_bits,
         struct ocfs2_suballoc_result *res,
         u16 *bits_left)
{
 int status;
 u16 chain;
 u64 next_group;
 struct inode *alloc_inode = ac->ac_inode;
 struct buffer_head *group_bh = ((void*)0);
 struct buffer_head *prev_group_bh = ((void*)0);
 struct ocfs2_dinode *fe = (struct ocfs2_dinode *) ac->ac_bh->b_data;
 struct ocfs2_chain_list *cl = (struct ocfs2_chain_list *) &fe->id2.i_chain;
 struct ocfs2_group_desc *bg;

 chain = ac->ac_chain;
 trace_ocfs2_search_chain_begin(
  (unsigned long long)OCFS2_I(alloc_inode)->ip_blkno,
  bits_wanted, chain);

 status = ocfs2_read_group_descriptor(alloc_inode, fe,
          le64_to_cpu(cl->cl_recs[chain].c_blkno),
          &group_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }
 bg = (struct ocfs2_group_desc *) group_bh->b_data;

 status = -ENOSPC;


 while ((status = ac->ac_group_search(alloc_inode, group_bh,
          bits_wanted, min_bits,
          ac->ac_max_block,
          res)) == -ENOSPC) {
  if (!bg->bg_next_group)
   break;

  brelse(prev_group_bh);
  prev_group_bh = ((void*)0);

  next_group = le64_to_cpu(bg->bg_next_group);
  prev_group_bh = group_bh;
  group_bh = ((void*)0);
  status = ocfs2_read_group_descriptor(alloc_inode, fe,
           next_group, &group_bh);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }
  bg = (struct ocfs2_group_desc *) group_bh->b_data;
 }
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto bail;
 }

 trace_ocfs2_search_chain_succ(
  (unsigned long long)le64_to_cpu(bg->bg_blkno), res->sr_bits);

 res->sr_bg_blkno = le64_to_cpu(bg->bg_blkno);

 BUG_ON(res->sr_bits == 0);
 if (!status)
  ocfs2_bg_discontig_fix_result(ac, bg, res);





 res->sr_bg_stable_blkno = group_bh->b_blocknr;
 if (!ac->ac_disable_chain_relink &&
     (prev_group_bh) &&
     (ocfs2_block_group_reasonably_empty(bg, res->sr_bits))) {
  status = ocfs2_relink_block_group(handle, alloc_inode,
        ac->ac_bh, group_bh,
        prev_group_bh, chain);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }
 }

 if (ac->ac_find_loc_only)
  goto out_loc_only;

 status = ocfs2_alloc_dinode_update_counts(alloc_inode, handle,
        ac->ac_bh, res->sr_bits,
        chain);
 if (status) {
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_block_group_set_bits(handle,
         alloc_inode,
         bg,
         group_bh,
         res->sr_bit_offset,
         res->sr_bits);
 if (status < 0) {
  ocfs2_rollback_alloc_dinode_counts(alloc_inode,
     ac->ac_bh, res->sr_bits, chain);
  mlog_errno(status);
  goto bail;
 }

 trace_ocfs2_search_chain_end(
   (unsigned long long)le64_to_cpu(fe->i_blkno),
   res->sr_bits);

out_loc_only:
 *bits_left = le16_to_cpu(bg->bg_free_bits_count);
bail:
 brelse(group_bh);
 brelse(prev_group_bh);

 if (status)
  mlog_errno(status);
 return status;
}
