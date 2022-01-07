
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icleaf_hdr {int count; } ;
struct xfs_dir2_leaf_entry {int hashval; } ;
struct xfs_dir2_leaf {int dummy; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; } ;
struct TYPE_2__ {struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (struct xfs_dir2_leaf*) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;} ;


 scalar_t__ be32_to_cpu (int ) ;
 int stub1 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;
 int stub2 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;
 struct xfs_dir2_leaf_entry* stub3 (struct xfs_dir2_leaf*) ;
 struct xfs_dir2_leaf_entry* stub4 (struct xfs_dir2_leaf*) ;

int
xfs_dir2_leafn_order(
 struct xfs_inode *dp,
 struct xfs_buf *leaf1_bp,
 struct xfs_buf *leaf2_bp)
{
 struct xfs_dir2_leaf *leaf1 = leaf1_bp->b_addr;
 struct xfs_dir2_leaf *leaf2 = leaf2_bp->b_addr;
 struct xfs_dir2_leaf_entry *ents1;
 struct xfs_dir2_leaf_entry *ents2;
 struct xfs_dir3_icleaf_hdr hdr1;
 struct xfs_dir3_icleaf_hdr hdr2;

 dp->d_ops->leaf_hdr_from_disk(&hdr1, leaf1);
 dp->d_ops->leaf_hdr_from_disk(&hdr2, leaf2);
 ents1 = dp->d_ops->leaf_ents_p(leaf1);
 ents2 = dp->d_ops->leaf_ents_p(leaf2);

 if (hdr1.count > 0 && hdr2.count > 0 &&
     (be32_to_cpu(ents2[0].hashval) < be32_to_cpu(ents1[0].hashval) ||
      be32_to_cpu(ents2[hdr2.count - 1].hashval) <
    be32_to_cpu(ents1[hdr1.count - 1].hashval)))
  return 1;
 return 0;
}
