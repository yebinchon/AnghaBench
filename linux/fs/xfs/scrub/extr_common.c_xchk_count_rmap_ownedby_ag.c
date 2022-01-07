
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_filblks_t ;
struct xfs_scrub {int dummy; } ;
struct xfs_owner_info {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;
struct xchk_rmap_ownedby_info {scalar_t__* blocks; struct xfs_owner_info const* oinfo; } ;


 int xchk_count_rmap_ownedby_irec ;
 int xfs_rmap_query_all (struct xfs_btree_cur*,int ,struct xchk_rmap_ownedby_info*) ;

int
xchk_count_rmap_ownedby_ag(
 struct xfs_scrub *sc,
 struct xfs_btree_cur *cur,
 const struct xfs_owner_info *oinfo,
 xfs_filblks_t *blocks)
{
 struct xchk_rmap_ownedby_info sroi = {
  .oinfo = oinfo,
  .blocks = blocks,
 };

 *blocks = 0;
 return xfs_rmap_query_all(cur, xchk_count_rmap_ownedby_irec,
   &sroi);
}
