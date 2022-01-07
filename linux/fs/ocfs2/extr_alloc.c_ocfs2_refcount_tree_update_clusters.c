
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_refcount_block {int rf_clusters; } ;
struct ocfs2_extent_tree {struct ocfs2_refcount_block* et_object; } ;


 int le32_add_cpu (int *,int ) ;

__attribute__((used)) static void ocfs2_refcount_tree_update_clusters(struct ocfs2_extent_tree *et,
      u32 clusters)
{
 struct ocfs2_refcount_block *rb = et->et_object;

 le32_add_cpu(&rb->rf_clusters, clusters);
}
