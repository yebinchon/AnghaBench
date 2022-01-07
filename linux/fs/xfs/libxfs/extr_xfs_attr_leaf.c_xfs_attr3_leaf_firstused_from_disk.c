
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_da_geometry {scalar_t__ blksize; } ;
struct TYPE_3__ {scalar_t__ magic; } ;
struct TYPE_4__ {int firstused; TYPE_1__ info; } ;
struct xfs_attr_leafblock {TYPE_2__ hdr; } ;
struct xfs_attr3_leaf_hdr {int firstused; } ;
struct xfs_attr3_icleaf_hdr {scalar_t__ firstused; int usedbytes; int count; } ;


 int ASSERT (int) ;
 scalar_t__ USHRT_MAX ;
 int XFS_ATTR3_LEAF_MAGIC ;
 scalar_t__ XFS_ATTR3_LEAF_NULLOFF ;
 void* be16_to_cpu (int ) ;
 scalar_t__ cpu_to_be16 (int ) ;

__attribute__((used)) static void
xfs_attr3_leaf_firstused_from_disk(
 struct xfs_da_geometry *geo,
 struct xfs_attr3_icleaf_hdr *to,
 struct xfs_attr_leafblock *from)
{
 struct xfs_attr3_leaf_hdr *hdr3;

 if (from->hdr.info.magic == cpu_to_be16(XFS_ATTR3_LEAF_MAGIC)) {
  hdr3 = (struct xfs_attr3_leaf_hdr *) from;
  to->firstused = be16_to_cpu(hdr3->firstused);
 } else {
  to->firstused = be16_to_cpu(from->hdr.firstused);
 }






 if (to->firstused == XFS_ATTR3_LEAF_NULLOFF) {
  ASSERT(!to->count && !to->usedbytes);
  ASSERT(geo->blksize > USHRT_MAX);
  to->firstused = geo->blksize;
 }
}
