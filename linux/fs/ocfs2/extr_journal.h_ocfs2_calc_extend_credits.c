
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_extent_list {int l_tree_depth; } ;


 int OCFS2_SUBALLOC_ALLOC ;
 int le16_to_cpu (int ) ;
 int ocfs2_extend_meta_needed (struct ocfs2_extent_list*) ;
 int ocfs2_quota_trans_credits (struct super_block*) ;

__attribute__((used)) static inline int ocfs2_calc_extend_credits(struct super_block *sb,
         struct ocfs2_extent_list *root_el)
{
 int bitmap_blocks, sysfile_bitmap_blocks, extent_blocks;


 bitmap_blocks = OCFS2_SUBALLOC_ALLOC;






 sysfile_bitmap_blocks = 1 +
  (OCFS2_SUBALLOC_ALLOC - 1) * ocfs2_extend_meta_needed(root_el);






 extent_blocks = 1 + 1 + le16_to_cpu(root_el->l_tree_depth);

 return bitmap_blocks + sysfile_bitmap_blocks + extent_blocks +
        ocfs2_quota_trans_credits(sb);
}
