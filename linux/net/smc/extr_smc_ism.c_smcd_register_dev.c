
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smcd_dev {int dev; int list; } ;
struct TYPE_2__ {int lock; int list; } ;


 int device_add (int *) ;
 int list_add_tail (int *,int *) ;
 TYPE_1__ smcd_dev_list ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int smcd_register_dev(struct smcd_dev *smcd)
{
 spin_lock(&smcd_dev_list.lock);
 list_add_tail(&smcd->list, &smcd_dev_list.list);
 spin_unlock(&smcd_dev_list.lock);

 return device_add(&smcd->dev);
}
