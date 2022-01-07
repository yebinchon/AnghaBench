
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct hci_conn {int dev; int handle; struct hci_dev* hdev; } ;


 int BT_DBG (char*,struct hci_conn*) ;
 int bt_dev_err (struct hci_dev*,char*) ;
 int dev_set_name (int *,char*,int ,int ) ;
 scalar_t__ device_add (int *) ;
 int hci_dev_hold (struct hci_dev*) ;

void hci_conn_add_sysfs(struct hci_conn *conn)
{
 struct hci_dev *hdev = conn->hdev;

 BT_DBG("conn %p", conn);

 dev_set_name(&conn->dev, "%s:%d", hdev->name, conn->handle);

 if (device_add(&conn->dev) < 0) {
  bt_dev_err(hdev, "failed to register connection device");
  return;
 }

 hci_dev_hold(hdev);
}
