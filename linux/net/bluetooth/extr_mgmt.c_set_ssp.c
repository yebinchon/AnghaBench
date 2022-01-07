
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int id; int name; } ;


 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_HS_ENABLED ;
 int HCI_OP_WRITE_SSP_DEBUG_MODE ;
 int HCI_OP_WRITE_SSP_MODE ;
 int HCI_SSP_ENABLED ;
 int HCI_USE_DEBUG_KEYS ;
 int MGMT_OP_SET_SSP ;
 scalar_t__ MGMT_STATUS_BUSY ;
 scalar_t__ MGMT_STATUS_INVALID_PARAMS ;
 scalar_t__ MGMT_STATUS_NOT_SUPPORTED ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,int*) ;
 int hdev_is_powered (struct hci_dev*) ;
 int lmp_ssp_capable (struct hci_dev*) ;
 scalar_t__ mgmt_bredr_support (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,scalar_t__) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;

__attribute__((used)) static int set_ssp(struct sock *sk, struct hci_dev *hdev, void *data, u16 len)
{
 struct mgmt_mode *cp = data;
 struct mgmt_pending_cmd *cmd;
 u8 status;
 int err;

 BT_DBG("request for %s", hdev->name);

 status = mgmt_bredr_support(hdev);
 if (status)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SSP, status);

 if (!lmp_ssp_capable(hdev))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SSP,
           MGMT_STATUS_NOT_SUPPORTED);

 if (cp->val != 0x00 && cp->val != 0x01)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SSP,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  bool changed;

  if (cp->val) {
   changed = !hci_dev_test_and_set_flag(hdev,
            HCI_SSP_ENABLED);
  } else {
   changed = hci_dev_test_and_clear_flag(hdev,
             HCI_SSP_ENABLED);
   if (!changed)
    changed = hci_dev_test_and_clear_flag(hdev,
              HCI_HS_ENABLED);
   else
    hci_dev_clear_flag(hdev, HCI_HS_ENABLED);
  }

  err = send_settings_rsp(sk, MGMT_OP_SET_SSP, hdev);
  if (err < 0)
   goto failed;

  if (changed)
   err = new_settings(hdev, sk);

  goto failed;
 }

 if (pending_find(MGMT_OP_SET_SSP, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SSP,
          MGMT_STATUS_BUSY);
  goto failed;
 }

 if (!!cp->val == hci_dev_test_flag(hdev, HCI_SSP_ENABLED)) {
  err = send_settings_rsp(sk, MGMT_OP_SET_SSP, hdev);
  goto failed;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_SSP, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto failed;
 }

 if (!cp->val && hci_dev_test_flag(hdev, HCI_USE_DEBUG_KEYS))
  hci_send_cmd(hdev, HCI_OP_WRITE_SSP_DEBUG_MODE,
        sizeof(cp->val), &cp->val);

 err = hci_send_cmd(hdev, HCI_OP_WRITE_SSP_MODE, 1, &cp->val);
 if (err < 0) {
  mgmt_pending_remove(cmd);
  goto failed;
 }

failed:
 hci_dev_unlock(hdev);
 return err;
}
