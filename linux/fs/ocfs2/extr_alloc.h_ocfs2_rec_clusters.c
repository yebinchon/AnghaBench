
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_rec {int e_leaf_clusters; int e_int_clusters; } ;
struct ocfs2_extent_list {scalar_t__ l_tree_depth; } ;


 unsigned int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static inline unsigned int ocfs2_rec_clusters(struct ocfs2_extent_list *el,
           struct ocfs2_extent_rec *rec)
{







 if (el->l_tree_depth)
  return le32_to_cpu(rec->e_int_clusters);
 else
  return le16_to_cpu(rec->e_leaf_clusters);
}
