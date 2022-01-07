
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_io_capa_request {int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_cp_io_capability_reply {int capability; int authentication; int reason; int bdaddr; int oob_data; } ;
struct hci_cp_io_capability_neg_reply {int capability; int authentication; int reason; int bdaddr; int oob_data; } ;
struct hci_conn {int remote_auth; int io_capability; int auth_type; int flags; } ;
typedef int cp ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;
 int HCI_AT_NO_BONDING ;
 int HCI_AT_NO_BONDING_MITM ;
 int HCI_BONDABLE ;
 int HCI_CONN_AUTH_INITIATOR ;
 int HCI_ERROR_PAIRING_NOT_ALLOWED ;
 int HCI_IO_DISPLAY_YESNO ;
 int HCI_IO_NO_INPUT_OUTPUT ;
 int HCI_MGMT ;
 int HCI_OP_IO_CAPABILITY_NEG_REPLY ;
 int HCI_OP_IO_CAPABILITY_REPLY ;
 int bacpy (int *,int *) ;
 int bredr_oob_data_present (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_get_auth_req (struct hci_conn*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_io_capability_reply*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_io_capa_request_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_io_capa_request *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (!conn)
  goto unlock;

 hci_conn_hold(conn);

 if (!hci_dev_test_flag(hdev, HCI_MGMT))
  goto unlock;




 if (hci_dev_test_flag(hdev, HCI_BONDABLE) ||
     test_bit(HCI_CONN_AUTH_INITIATOR, &conn->flags) ||
     (conn->remote_auth & ~0x01) == HCI_AT_NO_BONDING) {
  struct hci_cp_io_capability_reply cp;

  bacpy(&cp.bdaddr, &ev->bdaddr);


  cp.capability = (conn->io_capability == 0x04) ?
    HCI_IO_DISPLAY_YESNO : conn->io_capability;


  if (conn->remote_auth == 0xff) {



   if (conn->io_capability != HCI_IO_NO_INPUT_OUTPUT &&
       conn->auth_type != HCI_AT_NO_BONDING)
    conn->auth_type |= 0x01;
  } else {
   conn->auth_type = hci_get_auth_req(conn);
  }




  if (!hci_dev_test_flag(hdev, HCI_BONDABLE))
   conn->auth_type &= HCI_AT_NO_BONDING_MITM;

  cp.authentication = conn->auth_type;
  cp.oob_data = bredr_oob_data_present(conn);

  hci_send_cmd(hdev, HCI_OP_IO_CAPABILITY_REPLY,
        sizeof(cp), &cp);
 } else {
  struct hci_cp_io_capability_neg_reply cp;

  bacpy(&cp.bdaddr, &ev->bdaddr);
  cp.reason = HCI_ERROR_PAIRING_NOT_ALLOWED;

  hci_send_cmd(hdev, HCI_OP_IO_CAPABILITY_NEG_REPLY,
        sizeof(cp), &cp);
 }

unlock:
 hci_dev_unlock(hdev);
}
