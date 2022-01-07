
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_da_args {int index; size_t namelen; void* rmtvaluelen; TYPE_1__* dp; int rmtblkcnt; void* rmtblkno; int name; TYPE_2__* geo; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; } ;
struct xfs_attr_leafblock {int dummy; } ;
struct xfs_attr_leaf_name_remote {size_t namelen; int valueblk; int valuelen; int * name; } ;
struct xfs_attr_leaf_name_local {size_t namelen; int valuelen; int * nameval; } ;
struct xfs_attr_leaf_entry {int flags; } ;
struct xfs_attr3_icleaf_hdr {int count; } ;
struct TYPE_4__ {int blksize; } ;
struct TYPE_3__ {int i_mount; } ;


 int ASSERT (int) ;
 int XFS_ATTR_LOCAL ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int *,size_t) ;
 struct xfs_attr_leaf_entry* xfs_attr3_leaf_entryp (struct xfs_attr_leafblock*) ;
 int xfs_attr3_leaf_hdr_from_disk (TYPE_2__*,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ;
 struct xfs_attr_leaf_name_local* xfs_attr3_leaf_name_local (struct xfs_attr_leafblock*,size_t) ;
 struct xfs_attr_leaf_name_remote* xfs_attr3_leaf_name_remote (struct xfs_attr_leafblock*,size_t) ;
 int xfs_attr3_rmt_blocks (int ,void*) ;
 int xfs_attr_copy_value (struct xfs_da_args*,int *,void*) ;

int
xfs_attr3_leaf_getvalue(
 struct xfs_buf *bp,
 struct xfs_da_args *args)
{
 struct xfs_attr_leafblock *leaf;
 struct xfs_attr3_icleaf_hdr ichdr;
 struct xfs_attr_leaf_entry *entry;
 struct xfs_attr_leaf_name_local *name_loc;
 struct xfs_attr_leaf_name_remote *name_rmt;

 leaf = bp->b_addr;
 xfs_attr3_leaf_hdr_from_disk(args->geo, &ichdr, leaf);
 ASSERT(ichdr.count < args->geo->blksize / 8);
 ASSERT(args->index < ichdr.count);

 entry = &xfs_attr3_leaf_entryp(leaf)[args->index];
 if (entry->flags & XFS_ATTR_LOCAL) {
  name_loc = xfs_attr3_leaf_name_local(leaf, args->index);
  ASSERT(name_loc->namelen == args->namelen);
  ASSERT(memcmp(args->name, name_loc->nameval, args->namelen) == 0);
  return xfs_attr_copy_value(args,
     &name_loc->nameval[args->namelen],
     be16_to_cpu(name_loc->valuelen));
 }

 name_rmt = xfs_attr3_leaf_name_remote(leaf, args->index);
 ASSERT(name_rmt->namelen == args->namelen);
 ASSERT(memcmp(args->name, name_rmt->name, args->namelen) == 0);
 args->rmtvaluelen = be32_to_cpu(name_rmt->valuelen);
 args->rmtblkno = be32_to_cpu(name_rmt->valueblk);
 args->rmtblkcnt = xfs_attr3_rmt_blocks(args->dp->i_mount,
            args->rmtvaluelen);
 return xfs_attr_copy_value(args, ((void*)0), args->rmtvaluelen);
}
