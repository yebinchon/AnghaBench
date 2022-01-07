
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsblock_t ;
typedef int xfs_filblks_t ;
struct xfs_trans {int dummy; } ;
struct xfs_owner_info {int dummy; } ;


 int __xfs_bmap_add_free (struct xfs_trans*,int ,int ,struct xfs_owner_info const*,int) ;

__attribute__((used)) static inline void
xfs_bmap_add_free(
 struct xfs_trans *tp,
 xfs_fsblock_t bno,
 xfs_filblks_t len,
 const struct xfs_owner_info *oinfo)
{
 __xfs_bmap_add_free(tp, bno, len, oinfo, 0);
}
