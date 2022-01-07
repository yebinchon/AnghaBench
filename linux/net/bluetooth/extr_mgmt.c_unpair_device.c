
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
struct mgmt_rp_unpair_device {TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int cmd_complete; } ;
struct TYPE_4__ {scalar_t__ type; int bdaddr; } ;
struct mgmt_cp_unpair_device {int disconnect; TYPE_2__ addr; } ;
struct hci_dev {int id; } ;
struct hci_conn_params {int auto_connect; scalar_t__ explicit_connect; } ;
struct hci_conn {int flags; } ;
typedef int rp ;


 int ACL_LINK ;
 scalar_t__ BDADDR_BREDR ;
 int ENOMEM ;
 int HCI_AUTO_CONN_DISABLED ;
 int HCI_AUTO_CONN_EXPLICIT ;
 int HCI_CONN_PARAM_REMOVAL_PEND ;
 int HCI_ERROR_REMOTE_USER_TERM ;
 int MGMT_OP_UNPAIR_DEVICE ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_PAIRED ;
 int MGMT_STATUS_NOT_POWERED ;
 int addr_cmd_complete ;
 int bacpy (int *,int *) ;
 int bdaddr_type_is_valid (scalar_t__) ;
 int device_unpaired (struct hci_dev*,int *,scalar_t__,struct sock*) ;
 int hci_abort_conn (struct hci_conn*,int ) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 struct hci_conn* hci_conn_hash_lookup_le (struct hci_dev*,int *,int ) ;
 int hci_conn_params_del (struct hci_dev*,int *,int ) ;
 struct hci_conn_params* hci_conn_params_lookup (struct hci_dev*,int *,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_remove_link_key (struct hci_dev*,int *) ;
 int hdev_is_powered (struct hci_dev*) ;
 int le_addr_type (scalar_t__) ;
 int memset (struct mgmt_rp_unpair_device*,int ,int) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_rp_unpair_device*,int) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,struct mgmt_cp_unpair_device*,int) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int set_bit (int ,int *) ;
 int smp_cancel_and_remove_pairing (struct hci_dev*,int *,int ) ;

__attribute__((used)) static int unpair_device(struct sock *sk, struct hci_dev *hdev, void *data,
    u16 len)
{
 struct mgmt_cp_unpair_device *cp = data;
 struct mgmt_rp_unpair_device rp;
 struct hci_conn_params *params;
 struct mgmt_pending_cmd *cmd;
 struct hci_conn *conn;
 u8 addr_type;
 int err;

 memset(&rp, 0, sizeof(rp));
 bacpy(&rp.addr.bdaddr, &cp->addr.bdaddr);
 rp.addr.type = cp->addr.type;

 if (!bdaddr_type_is_valid(cp->addr.type))
  return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_UNPAIR_DEVICE,
      MGMT_STATUS_INVALID_PARAMS,
      &rp, sizeof(rp));

 if (cp->disconnect != 0x00 && cp->disconnect != 0x01)
  return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_UNPAIR_DEVICE,
      MGMT_STATUS_INVALID_PARAMS,
      &rp, sizeof(rp));

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_UNPAIR_DEVICE,
     MGMT_STATUS_NOT_POWERED, &rp,
     sizeof(rp));
  goto unlock;
 }

 if (cp->addr.type == BDADDR_BREDR) {







  if (cp->disconnect)
   conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK,
             &cp->addr.bdaddr);
  else
   conn = ((void*)0);

  err = hci_remove_link_key(hdev, &cp->addr.bdaddr);
  if (err < 0) {
   err = mgmt_cmd_complete(sk, hdev->id,
      MGMT_OP_UNPAIR_DEVICE,
      MGMT_STATUS_NOT_PAIRED, &rp,
      sizeof(rp));
   goto unlock;
  }

  goto done;
 }


 addr_type = le_addr_type(cp->addr.type);


 err = smp_cancel_and_remove_pairing(hdev, &cp->addr.bdaddr, addr_type);
 if (err < 0) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_UNPAIR_DEVICE,
     MGMT_STATUS_NOT_PAIRED, &rp,
     sizeof(rp));
  goto unlock;
 }

 conn = hci_conn_hash_lookup_le(hdev, &cp->addr.bdaddr, addr_type);
 if (!conn) {
  hci_conn_params_del(hdev, &cp->addr.bdaddr, addr_type);
  goto done;
 }





 set_bit(HCI_CONN_PARAM_REMOVAL_PEND, &conn->flags);


 params = hci_conn_params_lookup(hdev, &cp->addr.bdaddr, addr_type);
 if (params) {
  if (params->explicit_connect)
   params->auto_connect = HCI_AUTO_CONN_EXPLICIT;
  else
   params->auto_connect = HCI_AUTO_CONN_DISABLED;
 }




 if (!cp->disconnect)
  conn = ((void*)0);

done:



 if (!conn) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_UNPAIR_DEVICE, 0,
     &rp, sizeof(rp));
  device_unpaired(hdev, &cp->addr.bdaddr, cp->addr.type, sk);
  goto unlock;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_UNPAIR_DEVICE, hdev, cp,
          sizeof(*cp));
 if (!cmd) {
  err = -ENOMEM;
  goto unlock;
 }

 cmd->cmd_complete = addr_cmd_complete;

 err = hci_abort_conn(conn, HCI_ERROR_REMOTE_USER_TERM);
 if (err < 0)
  mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
 return err;
}
