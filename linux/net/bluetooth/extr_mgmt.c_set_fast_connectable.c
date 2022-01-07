
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_request {int dummy; } ;
struct hci_dev {scalar_t__ hci_ver; int id; int name; } ;


 scalar_t__ BLUETOOTH_VER_1_2 ;
 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_BREDR_ENABLED ;
 int HCI_FAST_CONNECTABLE ;
 int MGMT_OP_SET_FAST_CONNECTABLE ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_FAILED ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int __hci_req_write_fast_connectable (struct hci_request*,int) ;
 int fast_connectable_complete ;
 int hci_dev_change_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;

__attribute__((used)) static int set_fast_connectable(struct sock *sk, struct hci_dev *hdev,
    void *data, u16 len)
{
 struct mgmt_mode *cp = data;
 struct mgmt_pending_cmd *cmd;
 struct hci_request req;
 int err;

 BT_DBG("%s", hdev->name);

 if (!hci_dev_test_flag(hdev, HCI_BREDR_ENABLED) ||
     hdev->hci_ver < BLUETOOTH_VER_1_2)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_FAST_CONNECTABLE,
           MGMT_STATUS_NOT_SUPPORTED);

 if (cp->val != 0x00 && cp->val != 0x01)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_FAST_CONNECTABLE,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 if (pending_find(MGMT_OP_SET_FAST_CONNECTABLE, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_FAST_CONNECTABLE,
          MGMT_STATUS_BUSY);
  goto unlock;
 }

 if (!!cp->val == hci_dev_test_flag(hdev, HCI_FAST_CONNECTABLE)) {
  err = send_settings_rsp(sk, MGMT_OP_SET_FAST_CONNECTABLE,
     hdev);
  goto unlock;
 }

 if (!hdev_is_powered(hdev)) {
  hci_dev_change_flag(hdev, HCI_FAST_CONNECTABLE);
  err = send_settings_rsp(sk, MGMT_OP_SET_FAST_CONNECTABLE,
     hdev);
  new_settings(hdev, sk);
  goto unlock;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_FAST_CONNECTABLE, hdev,
          data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto unlock;
 }

 hci_req_init(&req, hdev);

 __hci_req_write_fast_connectable(&req, cp->val);

 err = hci_req_run(&req, fast_connectable_complete);
 if (err < 0) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_FAST_CONNECTABLE,
          MGMT_STATUS_FAILED);
  mgmt_pending_remove(cmd);
 }

unlock:
 hci_dev_unlock(hdev);

 return err;
}
