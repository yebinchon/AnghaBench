
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amp_ctrl {int kref; } ;


 int BT_DBG (char*,struct amp_ctrl*,int ) ;
 int amp_ctrl_destroy ;
 int kref_put (int *,int *) ;
 int kref_read (int *) ;

int amp_ctrl_put(struct amp_ctrl *ctrl)
{
 BT_DBG("ctrl %p orig refcnt %d", ctrl,
        kref_read(&ctrl->kref));

 return kref_put(&ctrl->kref, &amp_ctrl_destroy);
}
