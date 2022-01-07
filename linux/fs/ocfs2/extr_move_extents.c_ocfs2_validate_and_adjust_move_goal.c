
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {int s_clustersize_bits; int s_clustersize; } ;
struct ocfs2_move_extents {scalar_t__ me_goal; int me_len; } ;
struct ocfs2_group_desc {int bg_bits; int bg_blkno; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_3__ {int s_blocksize_bits; } ;


 int EINVAL ;
 int GLOBAL_BITMAP_SYSTEM_INODE ;
 int OCFS2_INVALID_SLOT ;
 struct ocfs2_super* OCFS2_SB (TYPE_1__*) ;
 int brelse (struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,scalar_t__) ;
 scalar_t__ ocfs2_block_to_cluster_start (TYPE_1__*,scalar_t__) ;
 int ocfs2_find_victim_alloc_group (struct inode*,scalar_t__,int ,int ,int*,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_validate_and_adjust_move_goal(struct inode *inode,
            struct ocfs2_move_extents *range)
{
 int ret, goal_bit = 0;

 struct buffer_head *gd_bh = ((void*)0);
 struct ocfs2_group_desc *bg;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 int c_to_b = 1 << (osb->s_clustersize_bits -
     inode->i_sb->s_blocksize_bits);




 range->me_goal = ocfs2_block_to_cluster_start(inode->i_sb,
            range->me_goal);




 ret = ocfs2_find_victim_alloc_group(inode, range->me_goal,
         GLOBAL_BITMAP_SYSTEM_INODE,
         OCFS2_INVALID_SLOT,
         &goal_bit, &gd_bh);
 if (ret)
  goto out;

 bg = (struct ocfs2_group_desc *)gd_bh->b_data;





 if (range->me_goal == le64_to_cpu(bg->bg_blkno))
  range->me_goal += c_to_b;




 if ((le16_to_cpu(bg->bg_bits) - goal_bit) * osb->s_clustersize <
        range->me_len) {
  ret = -EINVAL;
  goto out;
 }




 mlog(0, "extents get ready to be moved to #%llu block\n",
      range->me_goal);

out:
 brelse(gd_bh);

 return ret;
}
