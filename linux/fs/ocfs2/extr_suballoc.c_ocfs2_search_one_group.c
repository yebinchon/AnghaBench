
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ocfs2_suballoc_result {int sr_bits; int sr_bit_offset; int sr_bg_stable_blkno; int sr_bg_blkno; } ;
struct ocfs2_group_desc {int bg_free_bits_count; int bg_chain; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int (* ac_group_search ) (struct inode*,struct buffer_head*,int ,int ,int ,struct ocfs2_suballoc_result*) ;TYPE_1__* ac_bh; scalar_t__ ac_find_loc_only; int ac_max_block; struct inode* ac_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_3__ {scalar_t__ b_data; } ;


 int ENOSPC ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_alloc_dinode_update_counts (struct inode*,int *,TYPE_1__*,int ,int ) ;
 int ocfs2_bg_discontig_fix_result (struct ocfs2_alloc_context*,struct ocfs2_group_desc*,struct ocfs2_suballoc_result*) ;
 int ocfs2_block_group_set_bits (int *,struct inode*,struct ocfs2_group_desc*,struct buffer_head*,int ,int ) ;
 int ocfs2_read_group_descriptor (struct inode*,struct ocfs2_dinode*,int ,struct buffer_head**) ;
 int ocfs2_rollback_alloc_dinode_counts (struct inode*,TYPE_1__*,int ,int ) ;
 int stub1 (struct inode*,struct buffer_head*,int ,int ,int ,struct ocfs2_suballoc_result*) ;

__attribute__((used)) static int ocfs2_search_one_group(struct ocfs2_alloc_context *ac,
      handle_t *handle,
      u32 bits_wanted,
      u32 min_bits,
      struct ocfs2_suballoc_result *res,
      u16 *bits_left)
{
 int ret;
 struct buffer_head *group_bh = ((void*)0);
 struct ocfs2_group_desc *gd;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)ac->ac_bh->b_data;
 struct inode *alloc_inode = ac->ac_inode;

 ret = ocfs2_read_group_descriptor(alloc_inode, di,
       res->sr_bg_blkno, &group_bh);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }

 gd = (struct ocfs2_group_desc *) group_bh->b_data;
 ret = ac->ac_group_search(alloc_inode, group_bh, bits_wanted, min_bits,
      ac->ac_max_block, res);
 if (ret < 0) {
  if (ret != -ENOSPC)
   mlog_errno(ret);
  goto out;
 }

 if (!ret)
  ocfs2_bg_discontig_fix_result(ac, gd, res);





 res->sr_bg_stable_blkno = group_bh->b_blocknr;

 if (ac->ac_find_loc_only)
  goto out_loc_only;

 ret = ocfs2_alloc_dinode_update_counts(alloc_inode, handle, ac->ac_bh,
            res->sr_bits,
            le16_to_cpu(gd->bg_chain));
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_block_group_set_bits(handle, alloc_inode, gd, group_bh,
      res->sr_bit_offset, res->sr_bits);
 if (ret < 0) {
  ocfs2_rollback_alloc_dinode_counts(alloc_inode, ac->ac_bh,
            res->sr_bits,
            le16_to_cpu(gd->bg_chain));
  mlog_errno(ret);
 }

out_loc_only:
 *bits_left = le16_to_cpu(gd->bg_free_bits_count);

out:
 brelse(group_bh);

 return ret;
}
