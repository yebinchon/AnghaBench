
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int discoverable_update; int req_workqueue; int id; int name; } ;


 int BT_DBG (char*,int ) ;
 int HCI_ADVERTISING ;
 int HCI_BONDABLE ;
 int HCI_DISCOVERABLE ;
 int HCI_LIMITED_PRIVACY ;
 int MGMT_OP_SET_BONDABLE ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_set_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 scalar_t__ hdev_is_powered (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 int queue_work (int ,int *) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;

__attribute__((used)) static int set_bondable(struct sock *sk, struct hci_dev *hdev, void *data,
   u16 len)
{
 struct mgmt_mode *cp = data;
 bool changed;
 int err;

 BT_DBG("request for %s", hdev->name);

 if (cp->val != 0x00 && cp->val != 0x01)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_BONDABLE,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 if (cp->val)
  changed = !hci_dev_test_and_set_flag(hdev, HCI_BONDABLE);
 else
  changed = hci_dev_test_and_clear_flag(hdev, HCI_BONDABLE);

 err = send_settings_rsp(sk, MGMT_OP_SET_BONDABLE, hdev);
 if (err < 0)
  goto unlock;

 if (changed) {



  if (hdev_is_powered(hdev) &&
      hci_dev_test_flag(hdev, HCI_ADVERTISING) &&
      hci_dev_test_flag(hdev, HCI_DISCOVERABLE) &&
      hci_dev_test_flag(hdev, HCI_LIMITED_PRIVACY))
   queue_work(hdev->req_workqueue,
       &hdev->discoverable_update);

  err = new_settings(hdev, sk);
 }

unlock:
 hci_dev_unlock(hdev);
 return err;
}
