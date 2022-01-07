
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_owner_info {scalar_t__ oi_owner; } ;


 scalar_t__ XFS_RMAP_OWN_NULL ;

__attribute__((used)) static inline bool
xfs_rmap_should_skip_owner_update(
 const struct xfs_owner_info *oi)
{
 return oi->oi_owner == XFS_RMAP_OWN_NULL;
}
