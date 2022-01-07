
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_trans {int t_mountp; } ;
struct TYPE_4__ {int bui_id; } ;
struct xfs_bui_log_item {TYPE_2__ bui_format; } ;
struct TYPE_3__ {int bud_bui_id; } ;
struct xfs_bud_log_item {int bud_item; TYPE_1__ bud_format; struct xfs_bui_log_item* bud_buip; } ;


 int XFS_LI_BUD ;
 struct xfs_bud_log_item* kmem_zone_zalloc (int ,int ) ;
 int xfs_bud_item_ops ;
 int xfs_bud_zone ;
 int xfs_log_item_init (int ,int *,int ,int *) ;
 int xfs_trans_add_item (struct xfs_trans*,int *) ;

__attribute__((used)) static struct xfs_bud_log_item *
xfs_trans_get_bud(
 struct xfs_trans *tp,
 struct xfs_bui_log_item *buip)
{
 struct xfs_bud_log_item *budp;

 budp = kmem_zone_zalloc(xfs_bud_zone, 0);
 xfs_log_item_init(tp->t_mountp, &budp->bud_item, XFS_LI_BUD,
     &xfs_bud_item_ops);
 budp->bud_buip = buip;
 budp->bud_format.bud_bui_id = buip->bui_format.bui_id;

 xfs_trans_add_item(tp, &budp->bud_item);
 return budp;
}
