
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_cp_set_discoverable {int val; int timeout; } ;
struct hci_dev {int discov_timeout; int discoverable_update; int req_workqueue; int discov_off; int id; int name; } ;


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
 int MGMT_STATUS_NOT_POWERED ;
 int MGMT_STATUS_REJECTED ;
 void* __le16_to_cpu (int ) ;
 int cancel_delayed_work (int *) ;
 int hci_dev_change_flag (struct hci_dev*,int ) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hdev_is_powered (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,void*) ;
 int msecs_to_jiffies (int) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int queue_delayed_work (int ,int *,int) ;
 int queue_work (int ,int *) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;

__attribute__((used)) static int set_discoverable(struct sock *sk, struct hci_dev *hdev, void *data,
       u16 len)
{
 struct mgmt_cp_set_discoverable *cp = data;
 struct mgmt_pending_cmd *cmd;
 u16 timeout;
 int err;

 BT_DBG("request for %s", hdev->name);

 if (!hci_dev_test_flag(hdev, HCI_LE_ENABLED) &&
     !hci_dev_test_flag(hdev, HCI_BREDR_ENABLED))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
           MGMT_STATUS_REJECTED);

 if (cp->val != 0x00 && cp->val != 0x01 && cp->val != 0x02)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
           MGMT_STATUS_INVALID_PARAMS);

 timeout = __le16_to_cpu(cp->timeout);




 if ((cp->val == 0x00 && timeout > 0) ||
     (cp->val == 0x02 && timeout == 0))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev) && timeout > 0) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
          MGMT_STATUS_NOT_POWERED);
  goto failed;
 }

 if (pending_find(MGMT_OP_SET_DISCOVERABLE, hdev) ||
     pending_find(MGMT_OP_SET_CONNECTABLE, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
          MGMT_STATUS_BUSY);
  goto failed;
 }

 if (!hci_dev_test_flag(hdev, HCI_CONNECTABLE)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_DISCOVERABLE,
          MGMT_STATUS_REJECTED);
  goto failed;
 }

 if (!hdev_is_powered(hdev)) {
  bool changed = 0;





  if (!!cp->val != hci_dev_test_flag(hdev, HCI_DISCOVERABLE)) {
   hci_dev_change_flag(hdev, HCI_DISCOVERABLE);
   changed = 1;
  }

  err = send_settings_rsp(sk, MGMT_OP_SET_DISCOVERABLE, hdev);
  if (err < 0)
   goto failed;

  if (changed)
   err = new_settings(hdev, sk);

  goto failed;
 }





 if (!!cp->val == hci_dev_test_flag(hdev, HCI_DISCOVERABLE) &&
     (cp->val == 0x02) == hci_dev_test_flag(hdev,
         HCI_LIMITED_DISCOVERABLE)) {
  cancel_delayed_work(&hdev->discov_off);
  hdev->discov_timeout = timeout;

  if (cp->val && hdev->discov_timeout > 0) {
   int to = msecs_to_jiffies(hdev->discov_timeout * 1000);
   queue_delayed_work(hdev->req_workqueue,
        &hdev->discov_off, to);
  }

  err = send_settings_rsp(sk, MGMT_OP_SET_DISCOVERABLE, hdev);
  goto failed;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_DISCOVERABLE, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto failed;
 }





 cancel_delayed_work(&hdev->discov_off);
 hdev->discov_timeout = timeout;

 if (cp->val)
  hci_dev_set_flag(hdev, HCI_DISCOVERABLE);
 else
  hci_dev_clear_flag(hdev, HCI_DISCOVERABLE);


 if (cp->val == 0x02)
  hci_dev_set_flag(hdev, HCI_LIMITED_DISCOVERABLE);
 else
  hci_dev_clear_flag(hdev, HCI_LIMITED_DISCOVERABLE);

 queue_work(hdev->req_workqueue, &hdev->discoverable_update);
 err = 0;

failed:
 hci_dev_unlock(hdev);
 return err;
}
