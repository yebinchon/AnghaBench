
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_auth_complete {scalar_t__ status; int handle; } ;
struct hci_dev {int name; } ;
struct hci_cp_set_conn_encrypt {int encrypt; int handle; } ;
struct hci_conn {scalar_t__ state; int flags; int disc_timeout; int pending_sec_level; int sec_level; } ;
typedef int cp ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_CONN_AUTH ;
 int HCI_CONN_AUTH_FAILURE ;
 int HCI_CONN_AUTH_PEND ;
 int HCI_CONN_ENCRYPT_PEND ;
 int HCI_CONN_REAUTH_PEND ;
 int HCI_DISCONN_TIMEOUT ;
 scalar_t__ HCI_ERROR_PIN_OR_KEY_MISSING ;
 int HCI_OP_SET_CONN_ENCRYPT ;
 int __le16_to_cpu (int ) ;
 int bt_dev_info (struct hci_dev*,char*) ;
 int clear_bit (int ,int *) ;
 int hci_auth_cfm (struct hci_conn*,scalar_t__) ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_conn_hold (struct hci_conn*) ;
 scalar_t__ hci_conn_ssp_enabled (struct hci_conn*) ;
 int hci_connect_cfm (struct hci_conn*,scalar_t__) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_encrypt_cfm (struct hci_conn*,scalar_t__,int) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_set_conn_encrypt*) ;
 int mgmt_auth_failed (struct hci_conn*,scalar_t__) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_auth_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_auth_complete *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (!conn)
  goto unlock;

 if (!ev->status) {
  clear_bit(HCI_CONN_AUTH_FAILURE, &conn->flags);

  if (!hci_conn_ssp_enabled(conn) &&
      test_bit(HCI_CONN_REAUTH_PEND, &conn->flags)) {
   bt_dev_info(hdev, "re-auth of legacy device is not possible.");
  } else {
   set_bit(HCI_CONN_AUTH, &conn->flags);
   conn->sec_level = conn->pending_sec_level;
  }
 } else {
  if (ev->status == HCI_ERROR_PIN_OR_KEY_MISSING)
   set_bit(HCI_CONN_AUTH_FAILURE, &conn->flags);

  mgmt_auth_failed(conn, ev->status);
 }

 clear_bit(HCI_CONN_AUTH_PEND, &conn->flags);
 clear_bit(HCI_CONN_REAUTH_PEND, &conn->flags);

 if (conn->state == BT_CONFIG) {
  if (!ev->status && hci_conn_ssp_enabled(conn)) {
   struct hci_cp_set_conn_encrypt cp;
   cp.handle = ev->handle;
   cp.encrypt = 0x01;
   hci_send_cmd(hdev, HCI_OP_SET_CONN_ENCRYPT, sizeof(cp),
         &cp);
  } else {
   conn->state = BT_CONNECTED;
   hci_connect_cfm(conn, ev->status);
   hci_conn_drop(conn);
  }
 } else {
  hci_auth_cfm(conn, ev->status);

  hci_conn_hold(conn);
  conn->disc_timeout = HCI_DISCONN_TIMEOUT;
  hci_conn_drop(conn);
 }

 if (test_bit(HCI_CONN_ENCRYPT_PEND, &conn->flags)) {
  if (!ev->status) {
   struct hci_cp_set_conn_encrypt cp;
   cp.handle = ev->handle;
   cp.encrypt = 0x01;
   hci_send_cmd(hdev, HCI_OP_SET_CONN_ENCRYPT, sizeof(cp),
         &cp);
  } else {
   clear_bit(HCI_CONN_ENCRYPT_PEND, &conn->flags);
   hci_encrypt_cfm(conn, ev->status, 0x00);
  }
 }

unlock:
 hci_dev_unlock(hdev);
}
