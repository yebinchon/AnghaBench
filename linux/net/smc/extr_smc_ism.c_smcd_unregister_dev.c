
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smcd_dev {int dev; int event_wq; int list; } ;
struct TYPE_2__ {int lock; } ;


 int VLAN_VID_MASK ;
 int destroy_workqueue (int ) ;
 int device_del (int *) ;
 int flush_workqueue (int ) ;
 int list_del (int *) ;
 int smc_smcd_terminate (struct smcd_dev*,int ,int ) ;
 TYPE_1__ smcd_dev_list ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void smcd_unregister_dev(struct smcd_dev *smcd)
{
 spin_lock(&smcd_dev_list.lock);
 list_del(&smcd->list);
 spin_unlock(&smcd_dev_list.lock);
 flush_workqueue(smcd->event_wq);
 destroy_workqueue(smcd->event_wq);
 smc_smcd_terminate(smcd, 0, VLAN_VID_MASK);

 device_del(&smcd->dev);
}
