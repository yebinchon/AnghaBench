
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_fileoff_t ;
struct xfs_inode {int i_mount; } ;
struct xfs_ifork {int if_height; } ;
struct xfs_iext_rec {int dummy; } ;
struct xfs_iext_cursor {scalar_t__ pos; TYPE_1__* leaf; } ;
struct xfs_bmbt_irec {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;


 int XFS_STATS_INC (int ,int ) ;
 struct xfs_iext_rec* cur_rec (struct xfs_iext_cursor*) ;
 TYPE_1__* xfs_iext_find_level (struct xfs_ifork*,int ,int) ;
 int xfs_iext_get (struct xfs_bmbt_irec*,struct xfs_iext_rec*) ;
 scalar_t__ xfs_iext_max_recs (struct xfs_ifork*) ;
 scalar_t__ xfs_iext_rec_cmp (struct xfs_iext_rec*,int ) ;
 scalar_t__ xfs_iext_rec_is_empty (struct xfs_iext_rec*) ;
 int xfs_iext_valid (struct xfs_ifork*,struct xfs_iext_cursor*) ;
 int xs_look_exlist ;

bool
xfs_iext_lookup_extent(
 struct xfs_inode *ip,
 struct xfs_ifork *ifp,
 xfs_fileoff_t offset,
 struct xfs_iext_cursor *cur,
 struct xfs_bmbt_irec *gotp)
{
 XFS_STATS_INC(ip->i_mount, xs_look_exlist);

 cur->leaf = xfs_iext_find_level(ifp, offset, 1);
 if (!cur->leaf) {
  cur->pos = 0;
  return 0;
 }

 for (cur->pos = 0; cur->pos < xfs_iext_max_recs(ifp); cur->pos++) {
  struct xfs_iext_rec *rec = cur_rec(cur);

  if (xfs_iext_rec_is_empty(rec))
   break;
  if (xfs_iext_rec_cmp(rec, offset) >= 0)
   goto found;
 }


 if (ifp->if_height == 1 || !cur->leaf->next)
  return 0;
 cur->leaf = cur->leaf->next;
 cur->pos = 0;
 if (!xfs_iext_valid(ifp, cur))
  return 0;
found:
 xfs_iext_get(gotp, cur_rec(cur));
 return 1;
}
