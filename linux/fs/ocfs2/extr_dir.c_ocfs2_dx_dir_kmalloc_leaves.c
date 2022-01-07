
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;


 int GFP_NOFS ;
 struct buffer_head** kcalloc (int,int,int ) ;
 int ocfs2_clusters_to_blocks (struct super_block*,int) ;

__attribute__((used)) static struct buffer_head **ocfs2_dx_dir_kmalloc_leaves(struct super_block *sb,
       int *ret_num_leaves)
{
 int num_dx_leaves = ocfs2_clusters_to_blocks(sb, 1);
 struct buffer_head **dx_leaves;

 dx_leaves = kcalloc(num_dx_leaves, sizeof(struct buffer_head *),
       GFP_NOFS);
 if (dx_leaves && ret_num_leaves)
  *ret_num_leaves = num_dx_leaves;

 return dx_leaves;
}
