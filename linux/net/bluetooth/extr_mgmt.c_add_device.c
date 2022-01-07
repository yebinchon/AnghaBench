
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int bdaddr; } ;
struct mgmt_cp_add_device {int action; TYPE_1__ addr; } ;
struct hci_dev {int id; int whitelist; int name; } ;


 int BDADDR_ANY ;
 scalar_t__ BDADDR_BREDR ;
 int BT_DBG (char*,int ) ;
 int HCI_AUTO_CONN_ALWAYS ;
 int HCI_AUTO_CONN_DIRECT ;
 int HCI_AUTO_CONN_REPORT ;
 int MGMT_OP_ADD_DEVICE ;
 int MGMT_STATUS_FAILED ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_SUCCESS ;
 int bacmp (int *,int ) ;
 int bdaddr_type_is_valid (scalar_t__) ;
 int device_added (struct sock*,struct hci_dev*,int *,scalar_t__,int) ;
 int hci_bdaddr_list_add (int *,int *,scalar_t__) ;
 scalar_t__ hci_conn_params_set (struct hci_dev*,int *,int ,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_is_identity_address (int *,int ) ;
 int hci_req_update_scan (struct hci_dev*) ;
 int hci_update_background_scan (struct hci_dev*) ;
 int le_addr_type (scalar_t__) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static int add_device(struct sock *sk, struct hci_dev *hdev,
        void *data, u16 len)
{
 struct mgmt_cp_add_device *cp = data;
 u8 auto_conn, addr_type;
 int err;

 BT_DBG("%s", hdev->name);

 if (!bdaddr_type_is_valid(cp->addr.type) ||
     !bacmp(&cp->addr.bdaddr, BDADDR_ANY))
  return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_ADD_DEVICE,
      MGMT_STATUS_INVALID_PARAMS,
      &cp->addr, sizeof(cp->addr));

 if (cp->action != 0x00 && cp->action != 0x01 && cp->action != 0x02)
  return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_ADD_DEVICE,
      MGMT_STATUS_INVALID_PARAMS,
      &cp->addr, sizeof(cp->addr));

 hci_dev_lock(hdev);

 if (cp->addr.type == BDADDR_BREDR) {

  if (cp->action != 0x01) {
   err = mgmt_cmd_complete(sk, hdev->id,
      MGMT_OP_ADD_DEVICE,
      MGMT_STATUS_INVALID_PARAMS,
      &cp->addr, sizeof(cp->addr));
   goto unlock;
  }

  err = hci_bdaddr_list_add(&hdev->whitelist, &cp->addr.bdaddr,
       cp->addr.type);
  if (err)
   goto unlock;

  hci_req_update_scan(hdev);

  goto added;
 }

 addr_type = le_addr_type(cp->addr.type);

 if (cp->action == 0x02)
  auto_conn = HCI_AUTO_CONN_ALWAYS;
 else if (cp->action == 0x01)
  auto_conn = HCI_AUTO_CONN_DIRECT;
 else
  auto_conn = HCI_AUTO_CONN_REPORT;






 if (!hci_is_identity_address(&cp->addr.bdaddr, addr_type)) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_ADD_DEVICE,
     MGMT_STATUS_INVALID_PARAMS,
     &cp->addr, sizeof(cp->addr));
  goto unlock;
 }




 if (hci_conn_params_set(hdev, &cp->addr.bdaddr, addr_type,
    auto_conn) < 0) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_ADD_DEVICE,
     MGMT_STATUS_FAILED, &cp->addr,
     sizeof(cp->addr));
  goto unlock;
 }

 hci_update_background_scan(hdev);

added:
 device_added(sk, hdev, &cp->addr.bdaddr, cp->addr.type, cp->action);

 err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_ADD_DEVICE,
    MGMT_STATUS_SUCCESS, &cp->addr,
    sizeof(cp->addr));

unlock:
 hci_dev_unlock(hdev);
 return err;
}
