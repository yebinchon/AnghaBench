
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int cmd_complete; } ;
struct hci_cp_user_passkey_reply {int passkey; int bdaddr; } ;
struct mgmt_addr_info {scalar_t__ type; struct hci_cp_user_passkey_reply bdaddr; } ;
struct hci_dev {int id; } ;
struct hci_conn {int dummy; } ;
typedef int cp ;
typedef int __le32 ;


 int ACL_LINK ;
 scalar_t__ BDADDR_BREDR ;
 scalar_t__ BDADDR_LE_PUBLIC ;
 scalar_t__ BDADDR_LE_RANDOM ;
 int ENOMEM ;
 int HCI_OP_USER_PASSKEY_REPLY ;
 int MGMT_STATUS_FAILED ;
 int MGMT_STATUS_NOT_CONNECTED ;
 int MGMT_STATUS_NOT_POWERED ;
 int MGMT_STATUS_SUCCESS ;
 int addr_cmd_complete ;
 int bacpy (int *,struct hci_cp_user_passkey_reply*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,struct hci_cp_user_passkey_reply*) ;
 struct hci_conn* hci_conn_hash_lookup_le (struct hci_dev*,struct hci_cp_user_passkey_reply*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_user_passkey_reply*) ;
 int hdev_is_powered (struct hci_dev*) ;
 int le_addr_type (scalar_t__) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_addr_info*,int) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,struct mgmt_addr_info*,int) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int smp_user_confirm_reply (struct hci_conn*,int ,int ) ;

__attribute__((used)) static int user_pairing_resp(struct sock *sk, struct hci_dev *hdev,
        struct mgmt_addr_info *addr, u16 mgmt_op,
        u16 hci_op, __le32 passkey)
{
 struct mgmt_pending_cmd *cmd;
 struct hci_conn *conn;
 int err;

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  err = mgmt_cmd_complete(sk, hdev->id, mgmt_op,
     MGMT_STATUS_NOT_POWERED, addr,
     sizeof(*addr));
  goto done;
 }

 if (addr->type == BDADDR_BREDR)
  conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &addr->bdaddr);
 else
  conn = hci_conn_hash_lookup_le(hdev, &addr->bdaddr,
            le_addr_type(addr->type));

 if (!conn) {
  err = mgmt_cmd_complete(sk, hdev->id, mgmt_op,
     MGMT_STATUS_NOT_CONNECTED, addr,
     sizeof(*addr));
  goto done;
 }

 if (addr->type == BDADDR_LE_PUBLIC || addr->type == BDADDR_LE_RANDOM) {
  err = smp_user_confirm_reply(conn, mgmt_op, passkey);
  if (!err)
   err = mgmt_cmd_complete(sk, hdev->id, mgmt_op,
      MGMT_STATUS_SUCCESS, addr,
      sizeof(*addr));
  else
   err = mgmt_cmd_complete(sk, hdev->id, mgmt_op,
      MGMT_STATUS_FAILED, addr,
      sizeof(*addr));

  goto done;
 }

 cmd = mgmt_pending_add(sk, mgmt_op, hdev, addr, sizeof(*addr));
 if (!cmd) {
  err = -ENOMEM;
  goto done;
 }

 cmd->cmd_complete = addr_cmd_complete;


 if (hci_op == HCI_OP_USER_PASSKEY_REPLY) {
  struct hci_cp_user_passkey_reply cp;

  bacpy(&cp.bdaddr, &addr->bdaddr);
  cp.passkey = passkey;
  err = hci_send_cmd(hdev, hci_op, sizeof(cp), &cp);
 } else
  err = hci_send_cmd(hdev, hci_op, sizeof(addr->bdaddr),
       &addr->bdaddr);

 if (err < 0)
  mgmt_pending_remove(cmd);

done:
 hci_dev_unlock(hdev);
 return err;
}
