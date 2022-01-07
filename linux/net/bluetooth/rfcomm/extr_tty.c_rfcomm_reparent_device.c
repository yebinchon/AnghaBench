
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dev {int tty_dev; int dst; int src; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int dev; } ;


 int ACL_LINK ;
 int BDADDR_BREDR ;
 int DPM_ORDER_DEV_AFTER_PARENT ;
 scalar_t__ device_is_registered (int *) ;
 int device_move (int ,int *,int ) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_dev* hci_get_route (int *,int *,int ) ;

__attribute__((used)) static void rfcomm_reparent_device(struct rfcomm_dev *dev)
{
 struct hci_dev *hdev;
 struct hci_conn *conn;

 hdev = hci_get_route(&dev->dst, &dev->src, BDADDR_BREDR);
 if (!hdev)
  return;




 hci_dev_lock(hdev);
 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &dev->dst);




 if (conn && device_is_registered(&conn->dev))
  device_move(dev->tty_dev, &conn->dev, DPM_ORDER_DEV_AFTER_PARENT);

 hci_dev_unlock(hdev);
 hci_dev_put(hdev);
}
