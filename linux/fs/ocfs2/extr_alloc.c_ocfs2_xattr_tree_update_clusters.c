
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int xt_clusters; } ;
struct TYPE_4__ {TYPE_1__ xb_root; } ;
struct ocfs2_xattr_block {TYPE_2__ xb_attrs; } ;
struct ocfs2_extent_tree {struct ocfs2_xattr_block* et_object; } ;


 int le32_add_cpu (int *,int ) ;

__attribute__((used)) static void ocfs2_xattr_tree_update_clusters(struct ocfs2_extent_tree *et,
          u32 clusters)
{
 struct ocfs2_xattr_block *xb = et->et_object;

 le32_add_cpu(&xb->xb_attrs.xb_root.xt_clusters, clusters);
}
