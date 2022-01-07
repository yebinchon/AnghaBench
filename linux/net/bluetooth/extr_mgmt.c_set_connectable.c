
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {scalar_t__ discov_timeout; int connectable_update; int req_workqueue; int discov_off; int id; int name; } ;


 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_BREDR_ENABLED ;
 int HCI_CONNECTABLE ;
 int HCI_DISCOVERABLE ;
 int HCI_LE_ENABLED ;
 int HCI_LIMITED_DISCOVERABLE ;
 int MGMT_OP_SET_CONNECTABLE ;
 int MGMT_OP_SET_DISCOVERABLE ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_REJECTED ;
 int cancel_delayed_work (int *) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hdev_is_powered (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int queue_work (int ,int *) ;
 int set_connectable_update_settings (struct hci_dev*,struct sock*,int) ;

__attribute__((used)) static int set_connectable(struct sock *sk, struct hci_dev *hdev, void *data,
      u16 len)
{
 struct mgmt_mode *cp = data;
 struct mgmt_pending_cmd *cmd;
 int err;

 BT_DBG("request for %s", hdev->name);

 if (!hci_dev_test_flag(hdev, HCI_LE_ENABLED) &&
     !hci_dev_test_flag(hdev, HCI_BREDR_ENABLED))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_CONNECTABLE,
           MGMT_STATUS_REJECTED);

 if (cp->val != 0x00 && cp->val != 0x01)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_CONNECTABLE,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  err = set_connectable_update_settings(hdev, sk, cp->val);
  goto failed;
 }

 if (pending_find(MGMT_OP_SET_DISCOVERABLE, hdev) ||
     pending_find(MGMT_OP_SET_CONNECTABLE, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_CONNECTABLE,
          MGMT_STATUS_BUSY);
  goto failed;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_CONNECTABLE, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto failed;
 }

 if (cp->val) {
  hci_dev_set_flag(hdev, HCI_CONNECTABLE);
 } else {
  if (hdev->discov_timeout > 0)
   cancel_delayed_work(&hdev->discov_off);

  hci_dev_clear_flag(hdev, HCI_LIMITED_DISCOVERABLE);
  hci_dev_clear_flag(hdev, HCI_DISCOVERABLE);
  hci_dev_clear_flag(hdev, HCI_CONNECTABLE);
 }

 queue_work(hdev->req_workqueue, &hdev->connectable_update);
 err = 0;

failed:
 hci_dev_unlock(hdev);
 return err;
}
