
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct hci_rp_read_enc_key_size {int key_size; scalar_t__ status; int handle; } ;
struct hci_dev {int name; } ;
struct hci_conn {scalar_t__ state; int flags; int enc_key_size; } ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,int) ;
 int HCI_CONN_AES_CCM ;
 int HCI_CONN_ENCRYPT ;
 int HCI_LINK_KEY_SIZE ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_connect_cfm (struct hci_conn*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_encrypt_cfm (struct hci_conn*,int ,int) ;
 int le16_to_cpu (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void read_enc_key_size_complete(struct hci_dev *hdev, u8 status,
           u16 opcode, struct sk_buff *skb)
{
 const struct hci_rp_read_enc_key_size *rp;
 struct hci_conn *conn;
 u16 handle;

 BT_DBG("%s status 0x%02x", hdev->name, status);

 if (!skb || skb->len < sizeof(*rp)) {
  bt_dev_err(hdev, "invalid read key size response");
  return;
 }

 rp = (void *)skb->data;
 handle = le16_to_cpu(rp->handle);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, handle);
 if (!conn)
  goto unlock;





 if (rp->status) {
  bt_dev_err(hdev, "failed to read key size for handle %u",
      handle);
  conn->enc_key_size = HCI_LINK_KEY_SIZE;
 } else {
  conn->enc_key_size = rp->key_size;
 }

 if (conn->state == BT_CONFIG) {
  conn->state = BT_CONNECTED;
  hci_connect_cfm(conn, 0);
  hci_conn_drop(conn);
 } else {
  u8 encrypt;

  if (!test_bit(HCI_CONN_ENCRYPT, &conn->flags))
   encrypt = 0x00;
  else if (test_bit(HCI_CONN_AES_CCM, &conn->flags))
   encrypt = 0x02;
  else
   encrypt = 0x01;

  hci_encrypt_cfm(conn, 0, encrypt);
 }

unlock:
 hci_dev_unlock(hdev);
}
