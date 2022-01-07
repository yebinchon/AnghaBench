
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int OCFS2_SUBALLOC_ALLOC ;
 int ocfs2_clusters_to_blocks (struct super_block*,int) ;

__attribute__((used)) static inline int ocfs2_add_dir_index_credits(struct super_block *sb)
{


 return 1 + 2 * OCFS2_SUBALLOC_ALLOC +
  ocfs2_clusters_to_blocks(sb, 1);
}
