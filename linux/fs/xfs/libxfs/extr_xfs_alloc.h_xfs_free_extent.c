
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsblock_t ;
typedef int xfs_extlen_t ;
struct xfs_trans {int dummy; } ;
struct xfs_owner_info {int dummy; } ;
typedef enum xfs_ag_resv_type { ____Placeholder_xfs_ag_resv_type } xfs_ag_resv_type ;


 int __xfs_free_extent (struct xfs_trans*,int ,int ,struct xfs_owner_info const*,int,int) ;

__attribute__((used)) static inline int
xfs_free_extent(
 struct xfs_trans *tp,
 xfs_fsblock_t bno,
 xfs_extlen_t len,
 const struct xfs_owner_info *oinfo,
 enum xfs_ag_resv_type type)
{
 return __xfs_free_extent(tp, bno, len, oinfo, type, 0);
}
