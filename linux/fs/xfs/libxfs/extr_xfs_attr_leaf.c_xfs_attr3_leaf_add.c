
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_attr_leaf_entry_t ;
struct xfs_da_args {scalar_t__ index; int trans; int geo; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; } ;
struct xfs_attr_leafblock {int hdr; } ;
struct xfs_attr3_icleaf_hdr {int count; int firstused; TYPE_1__* freemap; int holes; } ;
struct TYPE_2__ {int size; int base; } ;


 int ASSERT (int) ;
 int ENOSPC ;
 int XFS_ATTR_LEAF_MAPSIZE ;
 int XFS_DA_LOGRANGE (struct xfs_attr_leafblock*,int *,int) ;
 int trace_xfs_attr_leaf_add (struct xfs_da_args*) ;
 int xfs_attr3_leaf_add_work (struct xfs_buf*,struct xfs_attr3_icleaf_hdr*,struct xfs_da_args*,int) ;
 int xfs_attr3_leaf_compact (struct xfs_da_args*,struct xfs_attr3_icleaf_hdr*,struct xfs_buf*) ;
 int xfs_attr3_leaf_hdr_from_disk (int ,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ;
 int xfs_attr3_leaf_hdr_size (struct xfs_attr_leafblock*) ;
 int xfs_attr3_leaf_hdr_to_disk (int ,struct xfs_attr_leafblock*,struct xfs_attr3_icleaf_hdr*) ;
 int xfs_attr_leaf_newentsize (struct xfs_da_args*,int *) ;
 int xfs_trans_log_buf (int ,struct xfs_buf*,int ) ;

int
xfs_attr3_leaf_add(
 struct xfs_buf *bp,
 struct xfs_da_args *args)
{
 struct xfs_attr_leafblock *leaf;
 struct xfs_attr3_icleaf_hdr ichdr;
 int tablesize;
 int entsize;
 int sum;
 int tmp;
 int i;

 trace_xfs_attr_leaf_add(args);

 leaf = bp->b_addr;
 xfs_attr3_leaf_hdr_from_disk(args->geo, &ichdr, leaf);
 ASSERT(args->index >= 0 && args->index <= ichdr.count);
 entsize = xfs_attr_leaf_newentsize(args, ((void*)0));





 tablesize = (ichdr.count + 1) * sizeof(xfs_attr_leaf_entry_t)
     + xfs_attr3_leaf_hdr_size(leaf);
 for (sum = 0, i = XFS_ATTR_LEAF_MAPSIZE - 1; i >= 0; i--) {
  if (tablesize > ichdr.firstused) {
   sum += ichdr.freemap[i].size;
   continue;
  }
  if (!ichdr.freemap[i].size)
   continue;
  tmp = entsize;
  if (ichdr.freemap[i].base < ichdr.firstused)
   tmp += sizeof(xfs_attr_leaf_entry_t);
  if (ichdr.freemap[i].size >= tmp) {
   tmp = xfs_attr3_leaf_add_work(bp, &ichdr, args, i);
   goto out_log_hdr;
  }
  sum += ichdr.freemap[i].size;
 }






 if (!ichdr.holes && sum < entsize)
  return -ENOSPC;





 xfs_attr3_leaf_compact(args, &ichdr, bp);





 if (ichdr.freemap[0].size < (entsize + sizeof(xfs_attr_leaf_entry_t))) {
  tmp = -ENOSPC;
  goto out_log_hdr;
 }

 tmp = xfs_attr3_leaf_add_work(bp, &ichdr, args, 0);

out_log_hdr:
 xfs_attr3_leaf_hdr_to_disk(args->geo, leaf, &ichdr);
 xfs_trans_log_buf(args->trans, bp,
  XFS_DA_LOGRANGE(leaf, &leaf->hdr,
    xfs_attr3_leaf_hdr_size(leaf)));
 return tmp;
}
