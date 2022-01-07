
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_ifork {int dummy; } ;
struct xfs_iext_cursor {scalar_t__ pos; int leaf; } ;


 int cur_rec (struct xfs_iext_cursor*) ;
 scalar_t__ xfs_iext_max_recs (struct xfs_ifork*) ;
 scalar_t__ xfs_iext_rec_is_empty (int ) ;

__attribute__((used)) static inline bool xfs_iext_valid(struct xfs_ifork *ifp,
  struct xfs_iext_cursor *cur)
{
 if (!cur->leaf)
  return 0;
 if (cur->pos < 0 || cur->pos >= xfs_iext_max_recs(ifp))
  return 0;
 if (xfs_iext_rec_is_empty(cur_rec(cur)))
  return 0;
 return 1;
}
