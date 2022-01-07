
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; int bdaddr; } ;
struct mgmt_rp_pair_device {TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;int user_data; } ;
struct TYPE_4__ {scalar_t__ type; int bdaddr; } ;
struct mgmt_cp_pair_device {scalar_t__ io_cap; TYPE_2__ addr; } ;
struct hci_dev {int id; } ;
struct hci_conn_params {scalar_t__ auto_connect; } ;
struct hci_conn {scalar_t__ io_capability; scalar_t__ state; void* disconn_cfm_cb; void* security_cfm_cb; void* connect_cfm_cb; } ;
typedef int rp ;


 scalar_t__ BDADDR_BREDR ;
 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*) ;
 int BT_SECURITY_MEDIUM ;
 int EBUSY ;
 int ECONNREFUSED ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int HCI_AT_DEDICATED_BONDING ;
 scalar_t__ HCI_AUTO_CONN_DISABLED ;
 scalar_t__ HCI_AUTO_CONN_EXPLICIT ;
 int HCI_LE_CONN_TIMEOUT ;
 scalar_t__ IS_ERR (struct hci_conn*) ;
 int MGMT_OP_PAIR_DEVICE ;
 int MGMT_STATUS_ALREADY_PAIRED ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_CONNECT_FAILED ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_POWERED ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int MGMT_STATUS_REJECTED ;
 int PTR_ERR (struct hci_conn*) ;
 scalar_t__ SMP_IO_KEYBOARD_DISPLAY ;
 int bacpy (int *,int *) ;
 int bdaddr_type_is_valid (scalar_t__) ;
 scalar_t__ hci_bdaddr_is_paired (struct hci_dev*,int *,scalar_t__) ;
 int hci_conn_drop (struct hci_conn*) ;
 int hci_conn_get (struct hci_conn*) ;
 struct hci_conn_params* hci_conn_params_add (struct hci_dev*,int *,int ) ;
 scalar_t__ hci_conn_security (struct hci_conn*,int ,int ,int) ;
 struct hci_conn* hci_connect_acl (struct hci_dev*,int *,int ,int ) ;
 struct hci_conn* hci_connect_le_scan (struct hci_dev*,int *,int ,int ,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hdev_is_powered (struct hci_dev*) ;
 int le_addr_type (scalar_t__) ;
 void* le_pairing_complete_cb ;
 int memset (struct mgmt_rp_pair_device*,int ,int) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int,struct mgmt_rp_pair_device*,int) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int pairing_complete (struct mgmt_pending_cmd*,int ) ;
 void* pairing_complete_cb ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

__attribute__((used)) static int pair_device(struct sock *sk, struct hci_dev *hdev, void *data,
         u16 len)
{
 struct mgmt_cp_pair_device *cp = data;
 struct mgmt_rp_pair_device rp;
 struct mgmt_pending_cmd *cmd;
 u8 sec_level, auth_type;
 struct hci_conn *conn;
 int err;

 BT_DBG("");

 memset(&rp, 0, sizeof(rp));
 bacpy(&rp.addr.bdaddr, &cp->addr.bdaddr);
 rp.addr.type = cp->addr.type;

 if (!bdaddr_type_is_valid(cp->addr.type))
  return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
      MGMT_STATUS_INVALID_PARAMS,
      &rp, sizeof(rp));

 if (cp->io_cap > SMP_IO_KEYBOARD_DISPLAY)
  return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
      MGMT_STATUS_INVALID_PARAMS,
      &rp, sizeof(rp));

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
     MGMT_STATUS_NOT_POWERED, &rp,
     sizeof(rp));
  goto unlock;
 }

 if (hci_bdaddr_is_paired(hdev, &cp->addr.bdaddr, cp->addr.type)) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
     MGMT_STATUS_ALREADY_PAIRED, &rp,
     sizeof(rp));
  goto unlock;
 }

 sec_level = BT_SECURITY_MEDIUM;
 auth_type = HCI_AT_DEDICATED_BONDING;

 if (cp->addr.type == BDADDR_BREDR) {
  conn = hci_connect_acl(hdev, &cp->addr.bdaddr, sec_level,
           auth_type);
 } else {
  u8 addr_type = le_addr_type(cp->addr.type);
  struct hci_conn_params *p;
  p = hci_conn_params_add(hdev, &cp->addr.bdaddr, addr_type);

  if (p->auto_connect == HCI_AUTO_CONN_EXPLICIT)
   p->auto_connect = HCI_AUTO_CONN_DISABLED;

  conn = hci_connect_le_scan(hdev, &cp->addr.bdaddr,
        addr_type, sec_level,
        HCI_LE_CONN_TIMEOUT);
 }

 if (IS_ERR(conn)) {
  int status;

  if (PTR_ERR(conn) == -EBUSY)
   status = MGMT_STATUS_BUSY;
  else if (PTR_ERR(conn) == -EOPNOTSUPP)
   status = MGMT_STATUS_NOT_SUPPORTED;
  else if (PTR_ERR(conn) == -ECONNREFUSED)
   status = MGMT_STATUS_REJECTED;
  else
   status = MGMT_STATUS_CONNECT_FAILED;

  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
     status, &rp, sizeof(rp));
  goto unlock;
 }

 if (conn->connect_cfm_cb) {
  hci_conn_drop(conn);
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
     MGMT_STATUS_BUSY, &rp, sizeof(rp));
  goto unlock;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_PAIR_DEVICE, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  hci_conn_drop(conn);
  goto unlock;
 }

 cmd->cmd_complete = pairing_complete;


 if (cp->addr.type == BDADDR_BREDR) {
  conn->connect_cfm_cb = pairing_complete_cb;
  conn->security_cfm_cb = pairing_complete_cb;
  conn->disconn_cfm_cb = pairing_complete_cb;
 } else {
  conn->connect_cfm_cb = le_pairing_complete_cb;
  conn->security_cfm_cb = le_pairing_complete_cb;
  conn->disconn_cfm_cb = le_pairing_complete_cb;
 }

 conn->io_capability = cp->io_cap;
 cmd->user_data = hci_conn_get(conn);

 if ((conn->state == BT_CONNECTED || conn->state == BT_CONFIG) &&
     hci_conn_security(conn, sec_level, auth_type, 1)) {
  cmd->cmd_complete(cmd, 0);
  mgmt_pending_remove(cmd);
 }

 err = 0;

unlock:
 hci_dev_unlock(hdev);
 return err;
}
