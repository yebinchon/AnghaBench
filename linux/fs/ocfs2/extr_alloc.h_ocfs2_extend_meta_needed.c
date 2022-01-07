
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_list {int l_tree_depth; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int ocfs2_extend_meta_needed(struct ocfs2_extent_list *root_el)
{
 return le16_to_cpu(root_el->l_tree_depth) + 2;
}
