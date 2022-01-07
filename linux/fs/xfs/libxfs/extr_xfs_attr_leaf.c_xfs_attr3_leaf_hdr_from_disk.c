
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct xfs_da_geometry {int dummy; } ;
struct TYPE_11__ {scalar_t__ magic; int back; int forw; } ;
struct TYPE_14__ {scalar_t__ count; scalar_t__ usedbytes; TYPE_6__* freemap; int holes; TYPE_4__ info; } ;
struct xfs_attr_leafblock {TYPE_7__ hdr; } ;
struct TYPE_8__ {scalar_t__ magic; int back; int forw; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
struct xfs_attr3_leaf_hdr {scalar_t__ count; scalar_t__ usedbytes; TYPE_3__* freemap; int holes; TYPE_2__ info; } ;
struct xfs_attr3_icleaf_hdr {TYPE_5__* freemap; int holes; void* usedbytes; void* count; void* magic; void* back; void* forw; } ;
struct TYPE_13__ {scalar_t__ base; scalar_t__ size; } ;
struct TYPE_12__ {void* size; void* base; } ;
struct TYPE_10__ {scalar_t__ base; scalar_t__ size; } ;


 int ASSERT (int) ;
 int XFS_ATTR3_LEAF_MAGIC ;
 int XFS_ATTR_LEAF_MAGIC ;
 int XFS_ATTR_LEAF_MAPSIZE ;
 void* be16_to_cpu (scalar_t__) ;
 void* be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be16 (int ) ;
 int xfs_attr3_leaf_firstused_from_disk (struct xfs_da_geometry*,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ;

void
xfs_attr3_leaf_hdr_from_disk(
 struct xfs_da_geometry *geo,
 struct xfs_attr3_icleaf_hdr *to,
 struct xfs_attr_leafblock *from)
{
 int i;

 ASSERT(from->hdr.info.magic == cpu_to_be16(XFS_ATTR_LEAF_MAGIC) ||
        from->hdr.info.magic == cpu_to_be16(XFS_ATTR3_LEAF_MAGIC));

 if (from->hdr.info.magic == cpu_to_be16(XFS_ATTR3_LEAF_MAGIC)) {
  struct xfs_attr3_leaf_hdr *hdr3 = (struct xfs_attr3_leaf_hdr *)from;

  to->forw = be32_to_cpu(hdr3->info.hdr.forw);
  to->back = be32_to_cpu(hdr3->info.hdr.back);
  to->magic = be16_to_cpu(hdr3->info.hdr.magic);
  to->count = be16_to_cpu(hdr3->count);
  to->usedbytes = be16_to_cpu(hdr3->usedbytes);
  xfs_attr3_leaf_firstused_from_disk(geo, to, from);
  to->holes = hdr3->holes;

  for (i = 0; i < XFS_ATTR_LEAF_MAPSIZE; i++) {
   to->freemap[i].base = be16_to_cpu(hdr3->freemap[i].base);
   to->freemap[i].size = be16_to_cpu(hdr3->freemap[i].size);
  }
  return;
 }
 to->forw = be32_to_cpu(from->hdr.info.forw);
 to->back = be32_to_cpu(from->hdr.info.back);
 to->magic = be16_to_cpu(from->hdr.info.magic);
 to->count = be16_to_cpu(from->hdr.count);
 to->usedbytes = be16_to_cpu(from->hdr.usedbytes);
 xfs_attr3_leaf_firstused_from_disk(geo, to, from);
 to->holes = from->hdr.holes;

 for (i = 0; i < XFS_ATTR_LEAF_MAPSIZE; i++) {
  to->freemap[i].base = be16_to_cpu(from->hdr.freemap[i].base);
  to->freemap[i].size = be16_to_cpu(from->hdr.freemap[i].size);
 }
}
