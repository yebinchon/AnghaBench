
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int flags; int id; int name; } ;


 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_AUTH ;
 int HCI_LINK_SECURITY ;
 int HCI_OP_WRITE_AUTH_ENABLE ;
 int MGMT_OP_SET_LINK_SECURITY ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int hci_dev_change_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,int*) ;
 int hdev_is_powered (struct hci_dev*) ;
 int mgmt_bredr_support (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int set_link_security(struct sock *sk, struct hci_dev *hdev, void *data,
        u16 len)
{
 struct mgmt_mode *cp = data;
 struct mgmt_pending_cmd *cmd;
 u8 val, status;
 int err;

 BT_DBG("request for %s", hdev->name);

 status = mgmt_bredr_support(hdev);
 if (status)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_LINK_SECURITY,
           status);

 if (cp->val != 0x00 && cp->val != 0x01)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_LINK_SECURITY,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  bool changed = 0;

  if (!!cp->val != hci_dev_test_flag(hdev, HCI_LINK_SECURITY)) {
   hci_dev_change_flag(hdev, HCI_LINK_SECURITY);
   changed = 1;
  }

  err = send_settings_rsp(sk, MGMT_OP_SET_LINK_SECURITY, hdev);
  if (err < 0)
   goto failed;

  if (changed)
   err = new_settings(hdev, sk);

  goto failed;
 }

 if (pending_find(MGMT_OP_SET_LINK_SECURITY, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_LINK_SECURITY,
          MGMT_STATUS_BUSY);
  goto failed;
 }

 val = !!cp->val;

 if (test_bit(HCI_AUTH, &hdev->flags) == val) {
  err = send_settings_rsp(sk, MGMT_OP_SET_LINK_SECURITY, hdev);
  goto failed;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_LINK_SECURITY, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto failed;
 }

 err = hci_send_cmd(hdev, HCI_OP_WRITE_AUTH_ENABLE, sizeof(val), &val);
 if (err < 0) {
  mgmt_pending_remove(cmd);
  goto failed;
 }

failed:
 hci_dev_unlock(hdev);
 return err;
}
