
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


 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_BREDR_ENABLED ;
 int HCI_LE_ENABLED ;
 int HCI_OP_WRITE_SC_SUPPORT ;
 int HCI_SC_ENABLED ;
 int HCI_SC_ONLY ;
 int HCI_SSP_ENABLED ;
 int MGMT_OP_SET_SECURE_CONN ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int MGMT_STATUS_REJECTED ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_clear_flag (struct hci_dev*,int ) ;
 int hci_dev_test_and_set_flag (struct hci_dev*,int ) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_add (struct hci_request*,int ,int,int*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 scalar_t__ lmp_sc_capable (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int new_settings (struct hci_dev*,struct sock*) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int sc_enable_complete ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;

__attribute__((used)) static int set_secure_conn(struct sock *sk, struct hci_dev *hdev,
      void *data, u16 len)
{
 struct mgmt_mode *cp = data;
 struct mgmt_pending_cmd *cmd;
 struct hci_request req;
 u8 val;
 int err;

 BT_DBG("request for %s", hdev->name);

 if (!lmp_sc_capable(hdev) &&
     !hci_dev_test_flag(hdev, HCI_LE_ENABLED))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SECURE_CONN,
           MGMT_STATUS_NOT_SUPPORTED);

 if (hci_dev_test_flag(hdev, HCI_BREDR_ENABLED) &&
     lmp_sc_capable(hdev) &&
     !hci_dev_test_flag(hdev, HCI_SSP_ENABLED))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SECURE_CONN,
           MGMT_STATUS_REJECTED);

 if (cp->val != 0x00 && cp->val != 0x01 && cp->val != 0x02)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SECURE_CONN,
      MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev) || !lmp_sc_capable(hdev) ||
     !hci_dev_test_flag(hdev, HCI_BREDR_ENABLED)) {
  bool changed;

  if (cp->val) {
   changed = !hci_dev_test_and_set_flag(hdev,
            HCI_SC_ENABLED);
   if (cp->val == 0x02)
    hci_dev_set_flag(hdev, HCI_SC_ONLY);
   else
    hci_dev_clear_flag(hdev, HCI_SC_ONLY);
  } else {
   changed = hci_dev_test_and_clear_flag(hdev,
             HCI_SC_ENABLED);
   hci_dev_clear_flag(hdev, HCI_SC_ONLY);
  }

  err = send_settings_rsp(sk, MGMT_OP_SET_SECURE_CONN, hdev);
  if (err < 0)
   goto failed;

  if (changed)
   err = new_settings(hdev, sk);

  goto failed;
 }

 if (pending_find(MGMT_OP_SET_SECURE_CONN, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SECURE_CONN,
          MGMT_STATUS_BUSY);
  goto failed;
 }

 val = !!cp->val;

 if (val == hci_dev_test_flag(hdev, HCI_SC_ENABLED) &&
     (cp->val == 0x02) == hci_dev_test_flag(hdev, HCI_SC_ONLY)) {
  err = send_settings_rsp(sk, MGMT_OP_SET_SECURE_CONN, hdev);
  goto failed;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_SECURE_CONN, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto failed;
 }

 hci_req_init(&req, hdev);
 hci_req_add(&req, HCI_OP_WRITE_SC_SUPPORT, 1, &val);
 err = hci_req_run(&req, sc_enable_complete);
 if (err < 0) {
  mgmt_pending_remove(cmd);
  goto failed;
 }

failed:
 hci_dev_unlock(hdev);
 return err;
}
