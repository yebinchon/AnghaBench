
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_request {int dummy; } ;
struct hci_dev {scalar_t__ le_scan_type; int cur_adv_instance; int id; int name; } ;


 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_ADVERTISING ;
 int HCI_ADVERTISING_CONNECTABLE ;
 int HCI_LE_SCAN ;
 int LE_LINK ;
 scalar_t__ LE_SCAN_ACTIVE ;
 int MGMT_OP_SET_ADVERTISING ;
 int MGMT_OP_SET_LE ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int __hci_req_disable_advertising (struct hci_request*) ;
 int __hci_req_enable_advertising (struct hci_request*) ;
 int __hci_req_start_ext_adv (struct hci_request*,int) ;
 int __hci_req_update_adv_data (struct hci_request*,int) ;
 int __hci_req_update_scan_rsp_data (struct hci_request*,int) ;
 int cancel_adv_timeout (struct hci_dev*) ;
 scalar_t__ ext_adv_capable (struct hci_dev*) ;
 scalar_t__ hci_conn_num (struct hci_dev*,int ) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int) ;
 int mgmt_le_support (struct hci_dev*) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;
 int set_advertising_complete ;

__attribute__((used)) static int set_advertising(struct sock *sk, struct hci_dev *hdev, void *data,
      u16 len)
{
 struct mgmt_mode *cp = data;
 struct mgmt_pending_cmd *cmd;
 struct hci_request req;
 u8 val, status;
 int err;

 BT_DBG("request for %s", hdev->name);

 status = mgmt_le_support(hdev);
 if (status)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_ADVERTISING,
           status);

 if (cp->val != 0x00 && cp->val != 0x01 && cp->val != 0x02)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_ADVERTISING,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 val = !!cp->val;






 if (!hdev_is_powered(hdev) ||
     (val == hci_dev_test_flag(hdev, HCI_ADVERTISING) &&
      (cp->val == 0x02) == hci_dev_test_flag(hdev, HCI_ADVERTISING_CONNECTABLE)) ||
     hci_conn_num(hdev, LE_LINK) > 0 ||
     (hci_dev_test_flag(hdev, HCI_LE_SCAN) &&
      hdev->le_scan_type == LE_SCAN_ACTIVE)) {
  bool changed;

  if (cp->val) {
   hdev->cur_adv_instance = 0x00;
   changed = !hci_dev_test_and_set_flag(hdev, HCI_ADVERTISING);
   if (cp->val == 0x02)
    hci_dev_set_flag(hdev, HCI_ADVERTISING_CONNECTABLE);
   else
    hci_dev_clear_flag(hdev, HCI_ADVERTISING_CONNECTABLE);
  } else {
   changed = hci_dev_test_and_clear_flag(hdev, HCI_ADVERTISING);
   hci_dev_clear_flag(hdev, HCI_ADVERTISING_CONNECTABLE);
  }

  err = send_settings_rsp(sk, MGMT_OP_SET_ADVERTISING, hdev);
  if (err < 0)
   goto unlock;

  if (changed)
   err = new_settings(hdev, sk);

  goto unlock;
 }

 if (pending_find(MGMT_OP_SET_ADVERTISING, hdev) ||
     pending_find(MGMT_OP_SET_LE, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_ADVERTISING,
          MGMT_STATUS_BUSY);
  goto unlock;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_ADVERTISING, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto unlock;
 }

 hci_req_init(&req, hdev);

 if (cp->val == 0x02)
  hci_dev_set_flag(hdev, HCI_ADVERTISING_CONNECTABLE);
 else
  hci_dev_clear_flag(hdev, HCI_ADVERTISING_CONNECTABLE);

 cancel_adv_timeout(hdev);

 if (val) {




  hdev->cur_adv_instance = 0x00;

  if (ext_adv_capable(hdev)) {
   __hci_req_start_ext_adv(&req, 0x00);
  } else {
   __hci_req_update_adv_data(&req, 0x00);
   __hci_req_update_scan_rsp_data(&req, 0x00);
   __hci_req_enable_advertising(&req);
  }
 } else {
  __hci_req_disable_advertising(&req);
 }

 err = hci_req_run(&req, set_advertising_complete);
 if (err < 0)
  mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
 return err;
}
