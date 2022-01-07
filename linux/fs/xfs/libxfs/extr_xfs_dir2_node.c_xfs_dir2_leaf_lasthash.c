
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_dahash_t ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icleaf_hdr {scalar_t__ magic; int count; } ;
struct xfs_dir2_leaf_entry {int hashval; } ;
struct xfs_dir2_leaf {int dummy; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; } ;
struct TYPE_2__ {struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (struct xfs_dir2_leaf*) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;} ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_LEAF1_MAGIC ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;
 scalar_t__ XFS_DIR3_LEAF1_MAGIC ;
 scalar_t__ XFS_DIR3_LEAFN_MAGIC ;
 int be32_to_cpu (int ) ;
 int stub1 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;
 struct xfs_dir2_leaf_entry* stub2 (struct xfs_dir2_leaf*) ;

xfs_dahash_t
xfs_dir2_leaf_lasthash(
 struct xfs_inode *dp,
 struct xfs_buf *bp,
 int *count)
{
 struct xfs_dir2_leaf *leaf = bp->b_addr;
 struct xfs_dir2_leaf_entry *ents;
 struct xfs_dir3_icleaf_hdr leafhdr;

 dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);

 ASSERT(leafhdr.magic == XFS_DIR2_LEAFN_MAGIC ||
        leafhdr.magic == XFS_DIR3_LEAFN_MAGIC ||
        leafhdr.magic == XFS_DIR2_LEAF1_MAGIC ||
        leafhdr.magic == XFS_DIR3_LEAF1_MAGIC);

 if (count)
  *count = leafhdr.count;
 if (!leafhdr.count)
  return 0;

 ents = dp->d_ops->leaf_ents_p(leaf);
 return be32_to_cpu(ents[leafhdr.count - 1].hashval);
}
