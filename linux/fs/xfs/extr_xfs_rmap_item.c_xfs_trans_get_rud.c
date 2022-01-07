
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_trans {int t_mountp; } ;
struct TYPE_4__ {int rui_id; } ;
struct xfs_rui_log_item {TYPE_2__ rui_format; } ;
struct TYPE_3__ {int rud_rui_id; } ;
struct xfs_rud_log_item {int rud_item; TYPE_1__ rud_format; struct xfs_rui_log_item* rud_ruip; } ;


 int XFS_LI_RUD ;
 struct xfs_rud_log_item* kmem_zone_zalloc (int ,int ) ;
 int xfs_log_item_init (int ,int *,int ,int *) ;
 int xfs_rud_item_ops ;
 int xfs_rud_zone ;
 int xfs_trans_add_item (struct xfs_trans*,int *) ;

__attribute__((used)) static struct xfs_rud_log_item *
xfs_trans_get_rud(
 struct xfs_trans *tp,
 struct xfs_rui_log_item *ruip)
{
 struct xfs_rud_log_item *rudp;

 rudp = kmem_zone_zalloc(xfs_rud_zone, 0);
 xfs_log_item_init(tp->t_mountp, &rudp->rud_item, XFS_LI_RUD,
     &xfs_rud_item_ops);
 rudp->rud_ruip = ruip;
 rudp->rud_format.rud_rui_id = ruip->rui_format.rui_id;

 xfs_trans_add_item(tp, &rudp->rud_item);
 return rudp;
}
