
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;struct hci_conn* user_data; } ;
struct mgmt_addr_info {int bdaddr; } ;
struct hci_dev {int id; } ;
struct hci_conn {int dst; } ;


 int BT_DBG (char*) ;
 int MGMT_OP_CANCEL_PAIR_DEVICE ;
 int MGMT_OP_PAIR_DEVICE ;
 int MGMT_STATUS_CANCELLED ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_POWERED ;
 scalar_t__ bacmp (int *,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hdev_is_powered (struct hci_dev*) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_addr_info*,int) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

__attribute__((used)) static int cancel_pair_device(struct sock *sk, struct hci_dev *hdev, void *data,
         u16 len)
{
 struct mgmt_addr_info *addr = data;
 struct mgmt_pending_cmd *cmd;
 struct hci_conn *conn;
 int err;

 BT_DBG("");

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_CANCEL_PAIR_DEVICE,
          MGMT_STATUS_NOT_POWERED);
  goto unlock;
 }

 cmd = pending_find(MGMT_OP_PAIR_DEVICE, hdev);
 if (!cmd) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_CANCEL_PAIR_DEVICE,
          MGMT_STATUS_INVALID_PARAMS);
  goto unlock;
 }

 conn = cmd->user_data;

 if (bacmp(&addr->bdaddr, &conn->dst) != 0) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_CANCEL_PAIR_DEVICE,
          MGMT_STATUS_INVALID_PARAMS);
  goto unlock;
 }

 cmd->cmd_complete(cmd, MGMT_STATUS_CANCELLED);
 mgmt_pending_remove(cmd);

 err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_CANCEL_PAIR_DEVICE, 0,
    addr, sizeof(*addr));
unlock:
 hci_dev_unlock(hdev);
 return err;
}
