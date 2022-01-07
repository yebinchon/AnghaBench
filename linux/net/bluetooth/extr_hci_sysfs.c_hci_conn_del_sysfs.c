
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct hci_conn {int dev; struct hci_dev* hdev; } ;
struct device {int dummy; } ;


 int DPM_ORDER_DEV_LAST ;
 int __match_tty ;
 int device_del (int *) ;
 struct device* device_find_child (int *,int *,int ) ;
 int device_is_registered (int *) ;
 int device_move (struct device*,int *,int ) ;
 int hci_dev_put (struct hci_dev*) ;
 int put_device (struct device*) ;

void hci_conn_del_sysfs(struct hci_conn *conn)
{
 struct hci_dev *hdev = conn->hdev;

 if (!device_is_registered(&conn->dev))
  return;

 while (1) {
  struct device *dev;

  dev = device_find_child(&conn->dev, ((void*)0), __match_tty);
  if (!dev)
   break;
  device_move(dev, ((void*)0), DPM_ORDER_DEV_LAST);
  put_device(dev);
 }

 device_del(&conn->dev);

 hci_dev_put(hdev);
}
