
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int cur_adv_instance; int id; int static_addr; int name; } ;


 int BDADDR_ANY ;
 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_BREDR_ENABLED ;
 int HCI_DISCOVERABLE ;
 int HCI_FAST_CONNECTABLE ;
 int HCI_HS_ENABLED ;
 int HCI_LE_ENABLED ;
 int HCI_LINK_SECURITY ;
 int HCI_SC_ENABLED ;
 int HCI_SSP_ENABLED ;
 int MGMT_OP_SET_BREDR ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int MGMT_STATUS_REJECTED ;
 int __hci_req_update_adv_data (struct hci_request*,int ) ;
 int __hci_req_update_scan (struct hci_request*) ;
 int __hci_req_write_fast_connectable (struct hci_request*,int) ;
 scalar_t__ bacmp (int *,int ) ;
 int hci_dev_change_flag (struct hci_dev*,int ) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 int lmp_bredr_capable (struct hci_dev*) ;
 int lmp_le_capable (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;
 int set_bredr_complete ;

__attribute__((used)) static int set_bredr(struct sock *sk, struct hci_dev *hdev, void *data, u16 len)
{
 struct mgmt_mode *cp = data;
 struct mgmt_pending_cmd *cmd;
 struct hci_request req;
 int err;

 BT_DBG("request for %s", hdev->name);

 if (!lmp_bredr_capable(hdev) || !lmp_le_capable(hdev))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_BREDR,
           MGMT_STATUS_NOT_SUPPORTED);

 if (!hci_dev_test_flag(hdev, HCI_LE_ENABLED))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_BREDR,
           MGMT_STATUS_REJECTED);

 if (cp->val != 0x00 && cp->val != 0x01)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_BREDR,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 if (cp->val == hci_dev_test_flag(hdev, HCI_BREDR_ENABLED)) {
  err = send_settings_rsp(sk, MGMT_OP_SET_BREDR, hdev);
  goto unlock;
 }

 if (!hdev_is_powered(hdev)) {
  if (!cp->val) {
   hci_dev_clear_flag(hdev, HCI_DISCOVERABLE);
   hci_dev_clear_flag(hdev, HCI_SSP_ENABLED);
   hci_dev_clear_flag(hdev, HCI_LINK_SECURITY);
   hci_dev_clear_flag(hdev, HCI_FAST_CONNECTABLE);
   hci_dev_clear_flag(hdev, HCI_HS_ENABLED);
  }

  hci_dev_change_flag(hdev, HCI_BREDR_ENABLED);

  err = send_settings_rsp(sk, MGMT_OP_SET_BREDR, hdev);
  if (err < 0)
   goto unlock;

  err = new_settings(hdev, sk);
  goto unlock;
 }


 if (!cp->val) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_BREDR,
          MGMT_STATUS_REJECTED);
  goto unlock;
 } else {
  if (!hci_dev_test_flag(hdev, HCI_BREDR_ENABLED) &&
      (bacmp(&hdev->static_addr, BDADDR_ANY) ||
       hci_dev_test_flag(hdev, HCI_SC_ENABLED))) {
   err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_BREDR,
           MGMT_STATUS_REJECTED);
   goto unlock;
  }
 }

 if (pending_find(MGMT_OP_SET_BREDR, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_BREDR,
          MGMT_STATUS_BUSY);
  goto unlock;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_BREDR, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto unlock;
 }




 hci_dev_set_flag(hdev, HCI_BREDR_ENABLED);

 hci_req_init(&req, hdev);

 __hci_req_write_fast_connectable(&req, 0);
 __hci_req_update_scan(&req);




 __hci_req_update_adv_data(&req, hdev->cur_adv_instance);

 err = hci_req_run(&req, set_bredr_complete);
 if (err < 0)
  mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
 return err;
}
