
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
typedef int uint32_t ;
struct xfs_mount {TYPE_2__* m_attr_geo; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; struct xfs_mount* b_mount; } ;
struct xfs_attr_leafblock {int dummy; } ;
struct xfs_attr_leaf_entry {int dummy; } ;
struct xfs_attr3_icleaf_hdr {size_t count; scalar_t__ firstused; TYPE_1__* freemap; } ;
struct TYPE_4__ {scalar_t__ blksize; } ;
struct TYPE_3__ {int base; int size; } ;


 int XFS_ATTR_LEAF_MAPSIZE ;
 int * __this_address ;
 struct xfs_attr_leaf_entry* xfs_attr3_leaf_entryp (struct xfs_attr_leafblock*) ;
 int xfs_attr3_leaf_hdr_from_disk (TYPE_2__*,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ;
 scalar_t__ xfs_attr3_leaf_hdr_size (struct xfs_attr_leafblock*) ;
 int * xfs_da3_blkinfo_verify (struct xfs_buf*,struct xfs_attr_leafblock*) ;
 int xfs_log_in_recovery (struct xfs_mount*) ;

__attribute__((used)) static xfs_failaddr_t
xfs_attr3_leaf_verify(
 struct xfs_buf *bp)
{
 struct xfs_attr3_icleaf_hdr ichdr;
 struct xfs_mount *mp = bp->b_mount;
 struct xfs_attr_leafblock *leaf = bp->b_addr;
 struct xfs_attr_leaf_entry *entries;
 uint32_t end;
 int i;
 xfs_failaddr_t fa;

 xfs_attr3_leaf_hdr_from_disk(mp->m_attr_geo, &ichdr, leaf);

 fa = xfs_da3_blkinfo_verify(bp, bp->b_addr);
 if (fa)
  return fa;






 if (!xfs_log_in_recovery(mp) && ichdr.count == 0)
  return __this_address;





 if (ichdr.firstused > mp->m_attr_geo->blksize)
  return __this_address;
 if (ichdr.firstused < xfs_attr3_leaf_hdr_size(leaf))
  return __this_address;


 entries = xfs_attr3_leaf_entryp(bp->b_addr);
 if ((char *)&entries[ichdr.count] >
     (char *)bp->b_addr + ichdr.firstused)
  return __this_address;
 for (i = 0; i < XFS_ATTR_LEAF_MAPSIZE; i++) {
  if (ichdr.freemap[i].base > mp->m_attr_geo->blksize)
   return __this_address;
  if (ichdr.freemap[i].base & 0x3)
   return __this_address;
  if (ichdr.freemap[i].size > mp->m_attr_geo->blksize)
   return __this_address;
  if (ichdr.freemap[i].size & 0x3)
   return __this_address;


  end = (uint32_t)ichdr.freemap[i].base + ichdr.freemap[i].size;
  if (end < ichdr.freemap[i].base)
   return __this_address;
  if (end > mp->m_attr_geo->blksize)
   return __this_address;
 }

 return ((void*)0);
}
