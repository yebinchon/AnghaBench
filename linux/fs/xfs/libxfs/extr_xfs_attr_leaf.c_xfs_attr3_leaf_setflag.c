
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_da_args {size_t index; int dp; int trans; int geo; int blkno; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; } ;
struct xfs_attr_leafblock {int dummy; } ;
struct xfs_attr_leaf_name_remote {int flags; scalar_t__ valuelen; scalar_t__ valueblk; } ;
struct xfs_attr_leaf_entry {int flags; scalar_t__ valuelen; scalar_t__ valueblk; } ;
struct xfs_attr3_icleaf_hdr {size_t count; } ;


 int ASSERT (int) ;
 int XFS_ATTR_INCOMPLETE ;
 int XFS_ATTR_LOCAL ;
 int XFS_DA_LOGRANGE (struct xfs_attr_leafblock*,struct xfs_attr_leaf_name_remote*,int) ;
 int trace_xfs_attr_leaf_setflag (struct xfs_da_args*) ;
 struct xfs_attr_leaf_name_remote* xfs_attr3_leaf_entryp (struct xfs_attr_leafblock*) ;
 int xfs_attr3_leaf_hdr_from_disk (int ,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ;
 struct xfs_attr_leaf_name_remote* xfs_attr3_leaf_name_remote (struct xfs_attr_leafblock*,size_t) ;
 int xfs_attr3_leaf_read (int ,int ,int ,int,struct xfs_buf**) ;
 int xfs_trans_log_buf (int ,struct xfs_buf*,int ) ;
 int xfs_trans_roll_inode (int *,int ) ;

int
xfs_attr3_leaf_setflag(
 struct xfs_da_args *args)
{
 struct xfs_attr_leafblock *leaf;
 struct xfs_attr_leaf_entry *entry;
 struct xfs_attr_leaf_name_remote *name_rmt;
 struct xfs_buf *bp;
 int error;




 trace_xfs_attr_leaf_setflag(args);




 error = xfs_attr3_leaf_read(args->trans, args->dp, args->blkno, -1, &bp);
 if (error)
  return error;

 leaf = bp->b_addr;





 entry = &xfs_attr3_leaf_entryp(leaf)[args->index];

 ASSERT((entry->flags & XFS_ATTR_INCOMPLETE) == 0);
 entry->flags |= XFS_ATTR_INCOMPLETE;
 xfs_trans_log_buf(args->trans, bp,
   XFS_DA_LOGRANGE(leaf, entry, sizeof(*entry)));
 if ((entry->flags & XFS_ATTR_LOCAL) == 0) {
  name_rmt = xfs_attr3_leaf_name_remote(leaf, args->index);
  name_rmt->valueblk = 0;
  name_rmt->valuelen = 0;
  xfs_trans_log_buf(args->trans, bp,
    XFS_DA_LOGRANGE(leaf, name_rmt, sizeof(*name_rmt)));
 }




 return xfs_trans_roll_inode(&args->trans, args->dp);
}
