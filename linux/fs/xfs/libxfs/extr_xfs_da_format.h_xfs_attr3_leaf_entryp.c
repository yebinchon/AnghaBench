
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ magic; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
struct TYPE_7__ {struct xfs_attr_leaf_entry* entries; TYPE_2__ hdr; } ;
typedef TYPE_3__ xfs_attr_leafblock_t ;
struct xfs_attr_leaf_entry {int dummy; } ;
struct xfs_attr3_leafblock {struct xfs_attr_leaf_entry* entries; } ;


 int XFS_ATTR3_LEAF_MAGIC ;
 scalar_t__ cpu_to_be16 (int ) ;

__attribute__((used)) static inline struct xfs_attr_leaf_entry *
xfs_attr3_leaf_entryp(xfs_attr_leafblock_t *leafp)
{
 if (leafp->hdr.info.magic == cpu_to_be16(XFS_ATTR3_LEAF_MAGIC))
  return &((struct xfs_attr3_leafblock *)leafp)->entries[0];
 return &leafp->entries[0];
}
