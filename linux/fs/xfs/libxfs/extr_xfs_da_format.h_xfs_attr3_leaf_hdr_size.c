
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct xfs_attr_leafblock {TYPE_2__ hdr; } ;
struct xfs_attr_leaf_hdr {int dummy; } ;
struct xfs_attr3_leaf_hdr {int dummy; } ;


 int XFS_ATTR3_LEAF_MAGIC ;
 scalar_t__ cpu_to_be16 (int ) ;

__attribute__((used)) static inline int
xfs_attr3_leaf_hdr_size(struct xfs_attr_leafblock *leafp)
{
 if (leafp->hdr.info.magic == cpu_to_be16(XFS_ATTR3_LEAF_MAGIC))
  return sizeof(struct xfs_attr3_leaf_hdr);
 return sizeof(struct xfs_attr_leaf_hdr);
}
