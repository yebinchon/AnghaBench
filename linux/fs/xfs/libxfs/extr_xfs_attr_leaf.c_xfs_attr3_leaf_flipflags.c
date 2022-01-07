
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int namelen; scalar_t__ nameval; } ;
typedef TYPE_1__ xfs_attr_leaf_name_local_t ;
struct xfs_da_args {scalar_t__ blkno; scalar_t__ blkno2; size_t index; size_t index2; int dp; int trans; scalar_t__ rmtvaluelen; scalar_t__ rmtblkno; int geo; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; } ;
struct xfs_attr_leafblock {int dummy; } ;
struct xfs_attr_leaf_name_remote {int flags; int namelen; void* valuelen; void* valueblk; int hashval; scalar_t__ name; } ;
struct xfs_attr_leaf_entry {int flags; int namelen; void* valuelen; void* valueblk; int hashval; scalar_t__ name; } ;
struct xfs_attr3_icleaf_hdr {size_t count; } ;


 int ASSERT (int) ;
 int XFS_ATTR_INCOMPLETE ;
 int XFS_ATTR_LOCAL ;
 int XFS_DA_LOGRANGE (struct xfs_attr_leafblock*,struct xfs_attr_leaf_name_remote*,int) ;
 scalar_t__ be32_to_cpu (int ) ;
 void* cpu_to_be32 (scalar_t__) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int trace_xfs_attr_leaf_flipflags (struct xfs_da_args*) ;
 struct xfs_attr_leaf_name_remote* xfs_attr3_leaf_entryp (struct xfs_attr_leafblock*) ;
 int xfs_attr3_leaf_hdr_from_disk (int ,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ;
 TYPE_1__* xfs_attr3_leaf_name_local (struct xfs_attr_leafblock*,size_t) ;
 struct xfs_attr_leaf_name_remote* xfs_attr3_leaf_name_remote (struct xfs_attr_leafblock*,size_t) ;
 int xfs_attr3_leaf_read (int ,int ,scalar_t__,int,struct xfs_buf**) ;
 int xfs_trans_log_buf (int ,struct xfs_buf*,int ) ;
 int xfs_trans_roll_inode (int *,int ) ;

int
xfs_attr3_leaf_flipflags(
 struct xfs_da_args *args)
{
 struct xfs_attr_leafblock *leaf1;
 struct xfs_attr_leafblock *leaf2;
 struct xfs_attr_leaf_entry *entry1;
 struct xfs_attr_leaf_entry *entry2;
 struct xfs_attr_leaf_name_remote *name_rmt;
 struct xfs_buf *bp1;
 struct xfs_buf *bp2;
 int error;
 trace_xfs_attr_leaf_flipflags(args);




 error = xfs_attr3_leaf_read(args->trans, args->dp, args->blkno, -1, &bp1);
 if (error)
  return error;




 if (args->blkno2 != args->blkno) {
  error = xfs_attr3_leaf_read(args->trans, args->dp, args->blkno2,
        -1, &bp2);
  if (error)
   return error;
 } else {
  bp2 = bp1;
 }

 leaf1 = bp1->b_addr;
 entry1 = &xfs_attr3_leaf_entryp(leaf1)[args->index];

 leaf2 = bp2->b_addr;
 entry2 = &xfs_attr3_leaf_entryp(leaf2)[args->index2];
 ASSERT(entry1->flags & XFS_ATTR_INCOMPLETE);
 ASSERT((entry2->flags & XFS_ATTR_INCOMPLETE) == 0);

 entry1->flags &= ~XFS_ATTR_INCOMPLETE;
 xfs_trans_log_buf(args->trans, bp1,
     XFS_DA_LOGRANGE(leaf1, entry1, sizeof(*entry1)));
 if (args->rmtblkno) {
  ASSERT((entry1->flags & XFS_ATTR_LOCAL) == 0);
  name_rmt = xfs_attr3_leaf_name_remote(leaf1, args->index);
  name_rmt->valueblk = cpu_to_be32(args->rmtblkno);
  name_rmt->valuelen = cpu_to_be32(args->rmtvaluelen);
  xfs_trans_log_buf(args->trans, bp1,
    XFS_DA_LOGRANGE(leaf1, name_rmt, sizeof(*name_rmt)));
 }

 entry2->flags |= XFS_ATTR_INCOMPLETE;
 xfs_trans_log_buf(args->trans, bp2,
     XFS_DA_LOGRANGE(leaf2, entry2, sizeof(*entry2)));
 if ((entry2->flags & XFS_ATTR_LOCAL) == 0) {
  name_rmt = xfs_attr3_leaf_name_remote(leaf2, args->index2);
  name_rmt->valueblk = 0;
  name_rmt->valuelen = 0;
  xfs_trans_log_buf(args->trans, bp2,
    XFS_DA_LOGRANGE(leaf2, name_rmt, sizeof(*name_rmt)));
 }




 error = xfs_trans_roll_inode(&args->trans, args->dp);

 return error;
}
