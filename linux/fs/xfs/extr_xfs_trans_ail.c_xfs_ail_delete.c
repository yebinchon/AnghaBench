
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_log_item {int li_ail; } ;
struct xfs_ail {int dummy; } ;


 int list_del (int *) ;
 int xfs_ail_check (struct xfs_ail*,struct xfs_log_item*) ;
 int xfs_trans_ail_cursor_clear (struct xfs_ail*,struct xfs_log_item*) ;

__attribute__((used)) static void
xfs_ail_delete(
 struct xfs_ail *ailp,
 struct xfs_log_item *lip)
{
 xfs_ail_check(ailp, lip);
 list_del(&lip->li_ail);
 xfs_trans_ail_cursor_clear(ailp, lip);
}
