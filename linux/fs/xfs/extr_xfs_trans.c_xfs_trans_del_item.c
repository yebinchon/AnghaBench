
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_log_item {int li_trans; int li_flags; } ;


 int XFS_LI_DIRTY ;
 int clear_bit (int ,int *) ;
 int list_del_init (int *) ;

void
xfs_trans_del_item(
 struct xfs_log_item *lip)
{
 clear_bit(XFS_LI_DIRTY, &lip->li_flags);
 list_del_init(&lip->li_trans);
}
