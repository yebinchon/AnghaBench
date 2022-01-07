
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct device {int dummy; } ;


 int THIS_MODULE ;
 int kfree (struct hci_dev*) ;
 int module_put (int ) ;
 struct hci_dev* to_hci_dev (struct device*) ;

__attribute__((used)) static void bt_host_release(struct device *dev)
{
 struct hci_dev *hdev = to_hci_dev(dev);
 kfree(hdev);
 module_put(THIS_MODULE);
}
