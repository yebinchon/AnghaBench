
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amp_ctrl {int kref; } ;


 int BT_DBG (char*,struct amp_ctrl*,int ) ;
 int kref_get (int *) ;
 int kref_read (int *) ;

void amp_ctrl_get(struct amp_ctrl *ctrl)
{
 BT_DBG("ctrl %p orig refcnt %d", ctrl,
        kref_read(&ctrl->kref));

 kref_get(&ctrl->kref);
}
