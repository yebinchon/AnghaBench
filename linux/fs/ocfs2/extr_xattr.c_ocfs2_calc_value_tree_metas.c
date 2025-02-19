
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_header {int dummy; } ;
struct ocfs2_xattr_bucket {TYPE_1__** bu_bhs; scalar_t__ bu_blocks; } ;
struct ocfs2_value_tree_metas {int num_recs; int credits; int num_metas; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int ocfs2_value_metas_in_xattr_header (int ,TYPE_1__*,struct ocfs2_xattr_header*,int *,int *,int *,int ,struct ocfs2_xattr_bucket*) ;
 int ocfs2_value_tree_metas_in_bucket ;

__attribute__((used)) static int ocfs2_calc_value_tree_metas(struct inode *inode,
          struct ocfs2_xattr_bucket *bucket,
          void *para)
{
 struct ocfs2_value_tree_metas *metas =
   (struct ocfs2_value_tree_metas *)para;
 struct ocfs2_xattr_header *xh =
   (struct ocfs2_xattr_header *)bucket->bu_bhs[0]->b_data;


 metas->credits += bucket->bu_blocks;
 return ocfs2_value_metas_in_xattr_header(inode->i_sb, bucket->bu_bhs[0],
     xh, &metas->num_metas,
     &metas->credits, &metas->num_recs,
     ocfs2_value_tree_metas_in_bucket,
     bucket);
}
