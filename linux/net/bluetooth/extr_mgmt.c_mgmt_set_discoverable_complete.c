
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mgmt_pending_cmd {int sk; int opcode; int index; } ;
struct hci_dev {int discov_timeout; int discov_off; int req_workqueue; } ;


 int BT_DBG (char*,scalar_t__) ;
 int HCI_DISCOVERABLE ;
 int HCI_LIMITED_DISCOVERABLE ;
 int MGMT_OP_SET_DISCOVERABLE ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_cmd_status (int ,int ,int ,scalar_t__) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 scalar_t__ mgmt_status (scalar_t__) ;
 int msecs_to_jiffies (int) ;
 int new_settings (struct hci_dev*,int ) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;
 int queue_delayed_work (int ,int *,int) ;
 int send_settings_rsp (int ,int ,struct hci_dev*) ;

void mgmt_set_discoverable_complete(struct hci_dev *hdev, u8 status)
{
 struct mgmt_pending_cmd *cmd;

 BT_DBG("status 0x%02x", status);

 hci_dev_lock(hdev);

 cmd = pending_find(MGMT_OP_SET_DISCOVERABLE, hdev);
 if (!cmd)
  goto unlock;

 if (status) {
  u8 mgmt_err = mgmt_status(status);
  mgmt_cmd_status(cmd->sk, cmd->index, cmd->opcode, mgmt_err);
  hci_dev_clear_flag(hdev, HCI_LIMITED_DISCOVERABLE);
  goto remove_cmd;
 }

 if (hci_dev_test_flag(hdev, HCI_DISCOVERABLE) &&
     hdev->discov_timeout > 0) {
  int to = msecs_to_jiffies(hdev->discov_timeout * 1000);
  queue_delayed_work(hdev->req_workqueue, &hdev->discov_off, to);
 }

 send_settings_rsp(cmd->sk, MGMT_OP_SET_DISCOVERABLE, hdev);
 new_settings(hdev, cmd->sk);

remove_cmd:
 mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
}
