
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
struct hci_dev {int id; int name; } ;
struct hci_cp_write_le_host_supported {int le; int simul; } ;
typedef int hci_cp ;


 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_ADVERTISING ;
 int HCI_BREDR_ENABLED ;
 int HCI_LE_ADV ;
 int HCI_LE_ENABLED ;
 int HCI_OP_WRITE_LE_HOST_SUPPORTED ;
 int MGMT_OP_SET_ADVERTISING ;
 int MGMT_OP_SET_LE ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int MGMT_STATUS_REJECTED ;
 int __hci_req_clear_ext_adv_sets (struct hci_request*) ;
 int __hci_req_disable_advertising (struct hci_request*) ;
 scalar_t__ ext_adv_capable (struct hci_dev*) ;
 int hci_dev_change_flag (struct hci_dev*,int ) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_write_le_host_supported*) ;
 int hci_req_clear_adv_instance (struct hci_dev*,int *,int *,int,int) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 int le_enable_complete ;
 int lmp_host_le_capable (struct hci_dev*) ;
 int lmp_le_capable (struct hci_dev*) ;
 int memset (struct hci_cp_write_le_host_supported*,int ,int) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;

__attribute__((used)) static int set_le(struct sock *sk, struct hci_dev *hdev, void *data, u16 len)
{
 struct mgmt_mode *cp = data;
 struct hci_cp_write_le_host_supported hci_cp;
 struct mgmt_pending_cmd *cmd;
 struct hci_request req;
 int err;
 u8 val, enabled;

 BT_DBG("request for %s", hdev->name);

 if (!lmp_le_capable(hdev))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_LE,
           MGMT_STATUS_NOT_SUPPORTED);

 if (cp->val != 0x00 && cp->val != 0x01)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_LE,
           MGMT_STATUS_INVALID_PARAMS);
 if (!hci_dev_test_flag(hdev, HCI_BREDR_ENABLED)) {
  if (cp->val == 0x01)
   return send_settings_rsp(sk, MGMT_OP_SET_LE, hdev);

  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_LE,
           MGMT_STATUS_REJECTED);
 }

 hci_dev_lock(hdev);

 val = !!cp->val;
 enabled = lmp_host_le_capable(hdev);

 if (!val)
  hci_req_clear_adv_instance(hdev, ((void*)0), ((void*)0), 0x00, 1);

 if (!hdev_is_powered(hdev) || val == enabled) {
  bool changed = 0;

  if (val != hci_dev_test_flag(hdev, HCI_LE_ENABLED)) {
   hci_dev_change_flag(hdev, HCI_LE_ENABLED);
   changed = 1;
  }

  if (!val && hci_dev_test_flag(hdev, HCI_ADVERTISING)) {
   hci_dev_clear_flag(hdev, HCI_ADVERTISING);
   changed = 1;
  }

  err = send_settings_rsp(sk, MGMT_OP_SET_LE, hdev);
  if (err < 0)
   goto unlock;

  if (changed)
   err = new_settings(hdev, sk);

  goto unlock;
 }

 if (pending_find(MGMT_OP_SET_LE, hdev) ||
     pending_find(MGMT_OP_SET_ADVERTISING, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_LE,
          MGMT_STATUS_BUSY);
  goto unlock;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_LE, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto unlock;
 }

 hci_req_init(&req, hdev);

 memset(&hci_cp, 0, sizeof(hci_cp));

 if (val) {
  hci_cp.le = val;
  hci_cp.simul = 0x00;
 } else {
  if (hci_dev_test_flag(hdev, HCI_LE_ADV))
   __hci_req_disable_advertising(&req);

  if (ext_adv_capable(hdev))
   __hci_req_clear_ext_adv_sets(&req);
 }

 hci_req_add(&req, HCI_OP_WRITE_LE_HOST_SUPPORTED, sizeof(hci_cp),
      &hci_cp);

 err = hci_req_run(&req, le_enable_complete);
 if (err < 0)
  mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
 return err;
}
