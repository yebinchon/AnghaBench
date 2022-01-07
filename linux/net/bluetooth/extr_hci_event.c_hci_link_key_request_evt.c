
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct link_key {int pin_len; int val; int type; } ;
struct hci_cp_link_key_reply {int link_key; int bdaddr; } ;
struct hci_ev_link_key_req {struct hci_cp_link_key_reply bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {int auth_type; scalar_t__ pending_sec_level; int flags; } ;
typedef int cp ;


 int ACL_LINK ;
 int BT_DBG (char*,int ,...) ;
 scalar_t__ BT_SECURITY_FIPS ;
 scalar_t__ BT_SECURITY_HIGH ;
 int HCI_CONN_NEW_LINK_KEY ;
 int HCI_LINK_KEY_SIZE ;
 int HCI_LK_COMBINATION ;
 int HCI_LK_UNAUTH_COMBINATION_P192 ;
 int HCI_LK_UNAUTH_COMBINATION_P256 ;
 int HCI_MGMT ;
 int HCI_OP_LINK_KEY_NEG_REPLY ;
 int HCI_OP_LINK_KEY_REPLY ;
 int bacpy (int *,struct hci_cp_link_key_reply*) ;
 int clear_bit (int ,int *) ;
 int conn_set_key (struct hci_conn*,int ,int) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,struct hci_cp_link_key_reply*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct link_key* hci_find_link_key (struct hci_dev*,struct hci_cp_link_key_reply*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_link_key_reply*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void hci_link_key_request_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_link_key_req *ev = (void *) skb->data;
 struct hci_cp_link_key_reply cp;
 struct hci_conn *conn;
 struct link_key *key;

 BT_DBG("%s", hdev->name);

 if (!hci_dev_test_flag(hdev, HCI_MGMT))
  return;

 hci_dev_lock(hdev);

 key = hci_find_link_key(hdev, &ev->bdaddr);
 if (!key) {
  BT_DBG("%s link key not found for %pMR", hdev->name,
         &ev->bdaddr);
  goto not_found;
 }

 BT_DBG("%s found key type %u for %pMR", hdev->name, key->type,
        &ev->bdaddr);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (conn) {
  clear_bit(HCI_CONN_NEW_LINK_KEY, &conn->flags);

  if ((key->type == HCI_LK_UNAUTH_COMBINATION_P192 ||
       key->type == HCI_LK_UNAUTH_COMBINATION_P256) &&
      conn->auth_type != 0xff && (conn->auth_type & 0x01)) {
   BT_DBG("%s ignoring unauthenticated key", hdev->name);
   goto not_found;
  }

  if (key->type == HCI_LK_COMBINATION && key->pin_len < 16 &&
      (conn->pending_sec_level == BT_SECURITY_HIGH ||
       conn->pending_sec_level == BT_SECURITY_FIPS)) {
   BT_DBG("%s ignoring key unauthenticated for high security",
          hdev->name);
   goto not_found;
  }

  conn_set_key(conn, key->type, key->pin_len);
 }

 bacpy(&cp.bdaddr, &ev->bdaddr);
 memcpy(cp.link_key, key->val, HCI_LINK_KEY_SIZE);

 hci_send_cmd(hdev, HCI_OP_LINK_KEY_REPLY, sizeof(cp), &cp);

 hci_dev_unlock(hdev);

 return;

not_found:
 hci_send_cmd(hdev, HCI_OP_LINK_KEY_NEG_REPLY, 6, &ev->bdaddr);
 hci_dev_unlock(hdev);
}
