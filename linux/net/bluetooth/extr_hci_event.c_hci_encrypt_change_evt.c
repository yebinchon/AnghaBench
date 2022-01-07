
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_request {int dummy; } ;
struct hci_ev_encrypt_change {scalar_t__ status; int encrypt; int handle; } ;
struct hci_dev {int* commands; int* le_features; int auth_payload_timeout; int name; } ;
struct hci_cp_write_auth_payload_to {void* timeout; void* handle; } ;
struct hci_cp_read_enc_key_size {void* handle; } ;
struct hci_conn {scalar_t__ key_type; scalar_t__ type; scalar_t__ state; int hdev; int handle; int flags; void* enc_key_size; int pending_sec_level; int sec_level; } ;
typedef int cp ;


 scalar_t__ ACL_LINK ;
 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_CONN_AES_CCM ;
 int HCI_CONN_AUTH ;
 int HCI_CONN_AUTH_FAILURE ;
 int HCI_CONN_ENCRYPT ;
 int HCI_CONN_ENCRYPT_PEND ;
 int HCI_CONN_FIPS ;
 scalar_t__ HCI_ERROR_AUTH_FAILURE ;
 scalar_t__ HCI_ERROR_PIN_OR_KEY_MISSING ;
 int HCI_LE_PING ;
 void* HCI_LINK_KEY_SIZE ;
 scalar_t__ HCI_LK_AUTH_COMBINATION_P256 ;
 int HCI_OP_READ_ENC_KEY_SIZE ;
 int HCI_OP_WRITE_AUTH_PAYLOAD_TO ;
 int HCI_RPA_EXPIRED ;
 int HCI_SC_ONLY ;
 scalar_t__ LE_LINK ;
 int __le16_to_cpu (int ) ;
 int bt_dev_err (struct hci_dev*,char*) ;
 int clear_bit (int ,int *) ;
 void* cpu_to_le16 (int ) ;
 int hci_adv_instances_set_rpa_expired (struct hci_dev*,int) ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_connect_cfm (struct hci_conn*,scalar_t__) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_set_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_disconnect (struct hci_conn*,scalar_t__) ;
 int hci_encrypt_cfm (struct hci_conn*,scalar_t__,int) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_read_enc_key_size*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 scalar_t__ hci_req_run_skb (struct hci_request*,int ) ;
 int hci_send_cmd (int ,int ,int,struct hci_cp_write_auth_payload_to*) ;
 scalar_t__ lmp_ping_capable (struct hci_dev*) ;
 int read_enc_key_size_complete ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_encrypt_change_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_encrypt_change *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (!conn)
  goto unlock;

 if (!ev->status) {
  if (ev->encrypt) {

   set_bit(HCI_CONN_AUTH, &conn->flags);
   set_bit(HCI_CONN_ENCRYPT, &conn->flags);
   conn->sec_level = conn->pending_sec_level;


   if (conn->key_type == HCI_LK_AUTH_COMBINATION_P256)
    set_bit(HCI_CONN_FIPS, &conn->flags);

   if ((conn->type == ACL_LINK && ev->encrypt == 0x02) ||
       conn->type == LE_LINK)
    set_bit(HCI_CONN_AES_CCM, &conn->flags);
  } else {
   clear_bit(HCI_CONN_ENCRYPT, &conn->flags);
   clear_bit(HCI_CONN_AES_CCM, &conn->flags);
  }
 }




 if (ev->status && conn->type == LE_LINK) {
  hci_dev_set_flag(hdev, HCI_RPA_EXPIRED);
  hci_adv_instances_set_rpa_expired(hdev, 1);
 }

 clear_bit(HCI_CONN_ENCRYPT_PEND, &conn->flags);

 if (ev->status && conn->state == BT_CONNECTED) {
  if (ev->status == HCI_ERROR_PIN_OR_KEY_MISSING)
   set_bit(HCI_CONN_AUTH_FAILURE, &conn->flags);

  hci_disconnect(conn, HCI_ERROR_AUTH_FAILURE);
  hci_conn_drop(conn);
  goto unlock;
 }





 if (hci_dev_test_flag(hdev, HCI_SC_ONLY) &&
     (!test_bit(HCI_CONN_AES_CCM, &conn->flags) ||
      conn->key_type != HCI_LK_AUTH_COMBINATION_P256)) {
  hci_connect_cfm(conn, HCI_ERROR_AUTH_FAILURE);
  hci_conn_drop(conn);
  goto unlock;
 }


 if (!ev->status && ev->encrypt && conn->type == ACL_LINK) {
  struct hci_cp_read_enc_key_size cp;
  struct hci_request req;





  if (!(hdev->commands[20] & 0x10)) {
   conn->enc_key_size = HCI_LINK_KEY_SIZE;
   goto notify;
  }

  hci_req_init(&req, hdev);

  cp.handle = cpu_to_le16(conn->handle);
  hci_req_add(&req, HCI_OP_READ_ENC_KEY_SIZE, sizeof(cp), &cp);

  if (hci_req_run_skb(&req, read_enc_key_size_complete)) {
   bt_dev_err(hdev, "sending read key size failed");
   conn->enc_key_size = HCI_LINK_KEY_SIZE;
   goto notify;
  }

  goto unlock;
 }
 if (test_bit(HCI_CONN_ENCRYPT, &conn->flags) &&
     test_bit(HCI_CONN_AES_CCM, &conn->flags) &&
     ((conn->type == ACL_LINK && lmp_ping_capable(hdev)) ||
      (conn->type == LE_LINK && (hdev->le_features[0] & HCI_LE_PING)))) {
  struct hci_cp_write_auth_payload_to cp;

  cp.handle = cpu_to_le16(conn->handle);
  cp.timeout = cpu_to_le16(hdev->auth_payload_timeout);
  hci_send_cmd(conn->hdev, HCI_OP_WRITE_AUTH_PAYLOAD_TO,
        sizeof(cp), &cp);
 }

notify:
 if (conn->state == BT_CONFIG) {
  if (!ev->status)
   conn->state = BT_CONNECTED;

  hci_connect_cfm(conn, ev->status);
  hci_conn_drop(conn);
 } else
  hci_encrypt_cfm(conn, ev->status, ev->encrypt);

unlock:
 hci_dev_unlock(hdev);
}
