
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_dablk_t ;
struct xfs_mount {int m_sb; } ;
struct xfs_inode {TYPE_1__* d_ops; struct xfs_mount* i_mount; } ;
struct xfs_da_node_entry {int before; int hashval; } ;
struct xfs_da_intnode {int blkno; } ;
struct xfs_da_args {TYPE_2__* geo; int trans; struct xfs_inode* dp; } ;
struct xfs_da3_icnode_hdr {int count; } ;
struct xfs_da3_blkinfo {int blkno; } ;
struct xfs_buf {struct xfs_da_intnode* b_addr; int b_bn; int b_ops; } ;
struct xfs_attr_leafblock {int blkno; } ;
struct xfs_attr_leaf_entry {int hashval; } ;
struct xfs_attr3_icleaf_hdr {int count; } ;
struct TYPE_4__ {scalar_t__ blksize; } ;
struct TYPE_3__ {int (* node_hdr_to_disk ) (struct xfs_da_intnode*,struct xfs_da3_icnode_hdr*) ;struct xfs_da_node_entry* (* node_tree_p ) (struct xfs_da_intnode*) ;int (* node_hdr_from_disk ) (struct xfs_da3_icnode_hdr*,struct xfs_da_intnode*) ;} ;


 int XFS_ATTR_FORK ;
 int XFS_BLFT_ATTR_LEAF_BUF ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 int memcpy (struct xfs_da_intnode*,struct xfs_da_intnode*,scalar_t__) ;
 int stub1 (struct xfs_da3_icnode_hdr*,struct xfs_da_intnode*) ;
 struct xfs_da_node_entry* stub2 (struct xfs_da_intnode*) ;
 int stub3 (struct xfs_da_intnode*,struct xfs_da3_icnode_hdr*) ;
 int trace_xfs_attr_leaf_to_node (struct xfs_da_args*) ;
 struct xfs_attr_leaf_entry* xfs_attr3_leaf_entryp (struct xfs_da_intnode*) ;
 int xfs_attr3_leaf_hdr_from_disk (TYPE_2__*,struct xfs_attr3_icleaf_hdr*,struct xfs_da_intnode*) ;
 int xfs_attr3_leaf_read (int ,struct xfs_inode*,int ,int,struct xfs_buf**) ;
 int xfs_da3_node_create (struct xfs_da_args*,int ,int,struct xfs_buf**,int ) ;
 int xfs_da_get_buf (int ,struct xfs_inode*,int ,int,struct xfs_buf**,int ) ;
 int xfs_da_grow_inode (struct xfs_da_args*,int *) ;
 scalar_t__ xfs_sb_version_hascrc (int *) ;
 int xfs_trans_buf_set_type (int ,struct xfs_buf*,int ) ;
 int xfs_trans_log_buf (int ,struct xfs_buf*,int ,scalar_t__) ;

int
xfs_attr3_leaf_to_node(
 struct xfs_da_args *args)
{
 struct xfs_attr_leafblock *leaf;
 struct xfs_attr3_icleaf_hdr icleafhdr;
 struct xfs_attr_leaf_entry *entries;
 struct xfs_da_node_entry *btree;
 struct xfs_da3_icnode_hdr icnodehdr;
 struct xfs_da_intnode *node;
 struct xfs_inode *dp = args->dp;
 struct xfs_mount *mp = dp->i_mount;
 struct xfs_buf *bp1 = ((void*)0);
 struct xfs_buf *bp2 = ((void*)0);
 xfs_dablk_t blkno;
 int error;

 trace_xfs_attr_leaf_to_node(args);

 error = xfs_da_grow_inode(args, &blkno);
 if (error)
  goto out;
 error = xfs_attr3_leaf_read(args->trans, dp, 0, -1, &bp1);
 if (error)
  goto out;

 error = xfs_da_get_buf(args->trans, dp, blkno, -1, &bp2, XFS_ATTR_FORK);
 if (error)
  goto out;


 xfs_trans_buf_set_type(args->trans, bp2, XFS_BLFT_ATTR_LEAF_BUF);
 bp2->b_ops = bp1->b_ops;
 memcpy(bp2->b_addr, bp1->b_addr, args->geo->blksize);
 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  struct xfs_da3_blkinfo *hdr3 = bp2->b_addr;
  hdr3->blkno = cpu_to_be64(bp2->b_bn);
 }
 xfs_trans_log_buf(args->trans, bp2, 0, args->geo->blksize - 1);




 error = xfs_da3_node_create(args, 0, 1, &bp1, XFS_ATTR_FORK);
 if (error)
  goto out;
 node = bp1->b_addr;
 dp->d_ops->node_hdr_from_disk(&icnodehdr, node);
 btree = dp->d_ops->node_tree_p(node);

 leaf = bp2->b_addr;
 xfs_attr3_leaf_hdr_from_disk(args->geo, &icleafhdr, leaf);
 entries = xfs_attr3_leaf_entryp(leaf);


 btree[0].hashval = entries[icleafhdr.count - 1].hashval;
 btree[0].before = cpu_to_be32(blkno);
 icnodehdr.count = 1;
 dp->d_ops->node_hdr_to_disk(node, &icnodehdr);
 xfs_trans_log_buf(args->trans, bp1, 0, args->geo->blksize - 1);
 error = 0;
out:
 return error;
}
