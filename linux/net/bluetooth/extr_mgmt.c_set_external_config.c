
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_set_external_config {int config; } ;
struct hci_dev {int flags; int power_on; int req_workqueue; int id; int quirks; int name; } ;


 int BT_DBG (char*,int ) ;
 int HCI_AUTO_OFF ;
 int HCI_CONFIG ;
 int HCI_EXT_CONFIGURED ;
 int HCI_QUIRK_EXTERNAL_CONFIG ;
 int HCI_RAW ;
 int HCI_UNCONFIGURED ;
 int MGMT_OP_SET_EXTERNAL_CONFIG ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int MGMT_STATUS_REJECTED ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_and_change_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_set_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 scalar_t__ hdev_is_powered (struct hci_dev*) ;
 scalar_t__ is_configured (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 int mgmt_index_added (struct hci_dev*) ;
 int mgmt_index_removed (struct hci_dev*) ;
 int new_options (struct hci_dev*,struct sock*) ;
 int queue_work (int ,int *) ;
 int send_options_rsp (struct sock*,int ,struct hci_dev*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int set_external_config(struct sock *sk, struct hci_dev *hdev,
          void *data, u16 len)
{
 struct mgmt_cp_set_external_config *cp = data;
 bool changed;
 int err;

 BT_DBG("%s", hdev->name);

 if (hdev_is_powered(hdev))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_EXTERNAL_CONFIG,
           MGMT_STATUS_REJECTED);

 if (cp->config != 0x00 && cp->config != 0x01)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_EXTERNAL_CONFIG,
             MGMT_STATUS_INVALID_PARAMS);

 if (!test_bit(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_EXTERNAL_CONFIG,
           MGMT_STATUS_NOT_SUPPORTED);

 hci_dev_lock(hdev);

 if (cp->config)
  changed = !hci_dev_test_and_set_flag(hdev, HCI_EXT_CONFIGURED);
 else
  changed = hci_dev_test_and_clear_flag(hdev, HCI_EXT_CONFIGURED);

 err = send_options_rsp(sk, MGMT_OP_SET_EXTERNAL_CONFIG, hdev);
 if (err < 0)
  goto unlock;

 if (!changed)
  goto unlock;

 err = new_options(hdev, sk);

 if (hci_dev_test_flag(hdev, HCI_UNCONFIGURED) == is_configured(hdev)) {
  mgmt_index_removed(hdev);

  if (hci_dev_test_and_change_flag(hdev, HCI_UNCONFIGURED)) {
   hci_dev_set_flag(hdev, HCI_CONFIG);
   hci_dev_set_flag(hdev, HCI_AUTO_OFF);

   queue_work(hdev->req_workqueue, &hdev->power_on);
  } else {
   set_bit(HCI_RAW, &hdev->flags);
   mgmt_index_added(hdev);
  }
 }

unlock:
 hci_dev_unlock(hdev);
 return err;
}
