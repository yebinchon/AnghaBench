
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct link_key {int* val; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int key_type; int dst; struct hci_dev* hdev; } ;


 int BT_DBG (char*,...) ;
 int EACCES ;
 int HCI_AMP_LINK_KEY_SIZE ;
 size_t HCI_LINK_KEY_SIZE ;
 int HCI_LK_DEBUG_COMBINATION ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int hci_conn_check_link_mode (struct hci_conn*) ;
 struct link_key* hci_find_link_key (struct hci_dev*,int *) ;
 int hmac_sha256 (int*,int,char*,int,int*) ;
 int memcpy (int*,int*,int) ;

int phylink_gen_key(struct hci_conn *conn, u8 *data, u8 *len, u8 *type)
{
 struct hci_dev *hdev = conn->hdev;
 struct link_key *key;
 u8 keybuf[HCI_AMP_LINK_KEY_SIZE];
 u8 gamp_key[HCI_AMP_LINK_KEY_SIZE];
 int err;

 if (!hci_conn_check_link_mode(conn))
  return -EACCES;

 BT_DBG("conn %p key_type %d", conn, conn->key_type);


 if (conn->key_type < 3) {
  bt_dev_err(hdev, "legacy key type %d", conn->key_type);
  return -EACCES;
 }

 *type = conn->key_type;
 *len = HCI_AMP_LINK_KEY_SIZE;

 key = hci_find_link_key(hdev, &conn->dst);
 if (!key) {
  BT_DBG("No Link key for conn %p dst %pMR", conn, &conn->dst);
  return -EACCES;
 }


 memcpy(&keybuf[0], key->val, HCI_LINK_KEY_SIZE);
 memcpy(&keybuf[HCI_LINK_KEY_SIZE], key->val, HCI_LINK_KEY_SIZE);


 err = hmac_sha256(keybuf, HCI_AMP_LINK_KEY_SIZE, "gamp", 4, gamp_key);
 if (err) {
  bt_dev_err(hdev, "could not derive Generic AMP Key: err %d", err);
  return err;
 }

 if (conn->key_type == HCI_LK_DEBUG_COMBINATION) {
  BT_DBG("Use Generic AMP Key (gamp)");
  memcpy(data, gamp_key, HCI_AMP_LINK_KEY_SIZE);
  return err;
 }


 return hmac_sha256(gamp_key, HCI_AMP_LINK_KEY_SIZE, "802b", 4, data);
}
