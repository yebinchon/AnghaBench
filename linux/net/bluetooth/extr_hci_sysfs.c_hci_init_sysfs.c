
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int class; int * type; } ;
struct hci_dev {struct device dev; } ;


 int THIS_MODULE ;
 int __module_get (int ) ;
 int bt_class ;
 int bt_host ;
 int device_initialize (struct device*) ;

void hci_init_sysfs(struct hci_dev *hdev)
{
 struct device *dev = &hdev->dev;

 dev->type = &bt_host;
 dev->class = bt_class;

 __module_get(THIS_MODULE);
 device_initialize(dev);
}
