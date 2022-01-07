
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_pin_code_req {int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {scalar_t__ state; scalar_t__ pending_sec_level; int flags; int disc_timeout; } ;


 int ACL_LINK ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ) ;
 scalar_t__ BT_SECURITY_HIGH ;
 int HCI_BONDABLE ;
 int HCI_CONN_AUTH_INITIATOR ;
 int HCI_MGMT ;
 int HCI_OP_PIN_CODE_NEG_REPLY ;
 int HCI_PAIRING_TIMEOUT ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,int *) ;
 int mgmt_pin_code_request (struct hci_dev*,int *,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hci_pin_code_request_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_pin_code_req *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (!conn)
  goto unlock;

 if (conn->state == BT_CONNECTED) {
  hci_conn_hold(conn);
  conn->disc_timeout = HCI_PAIRING_TIMEOUT;
  hci_conn_drop(conn);
 }

 if (!hci_dev_test_flag(hdev, HCI_BONDABLE) &&
     !test_bit(HCI_CONN_AUTH_INITIATOR, &conn->flags)) {
  hci_send_cmd(hdev, HCI_OP_PIN_CODE_NEG_REPLY,
        sizeof(ev->bdaddr), &ev->bdaddr);
 } else if (hci_dev_test_flag(hdev, HCI_MGMT)) {
  u8 secure;

  if (conn->pending_sec_level == BT_SECURITY_HIGH)
   secure = 1;
  else
   secure = 0;

  mgmt_pin_code_request(hdev, &ev->bdaddr, secure);
 }

unlock:
 hci_dev_unlock(hdev);
}
