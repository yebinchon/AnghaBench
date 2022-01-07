
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct link_key {int type; int pin_len; int val; int bdaddr; int list; } ;
struct hci_dev {int name; int link_keys; } ;
struct hci_conn {int key_type; int remote_auth; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*,int ,int *,int) ;
 int GFP_KERNEL ;
 int HCI_LINK_KEY_SIZE ;
 int HCI_LK_CHANGED_COMBINATION ;
 int HCI_LK_COMBINATION ;
 int bacpy (int *,int *) ;
 struct link_key* hci_find_link_key (struct hci_dev*,int *) ;
 int hci_persistent_key (struct hci_dev*,struct hci_conn*,int,int) ;
 struct link_key* kzalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int memcpy (int ,int*,int ) ;

struct link_key *hci_add_link_key(struct hci_dev *hdev, struct hci_conn *conn,
      bdaddr_t *bdaddr, u8 *val, u8 type,
      u8 pin_len, bool *persistent)
{
 struct link_key *key, *old_key;
 u8 old_key_type;

 old_key = hci_find_link_key(hdev, bdaddr);
 if (old_key) {
  old_key_type = old_key->type;
  key = old_key;
 } else {
  old_key_type = conn ? conn->key_type : 0xff;
  key = kzalloc(sizeof(*key), GFP_KERNEL);
  if (!key)
   return ((void*)0);
  list_add_rcu(&key->list, &hdev->link_keys);
 }

 BT_DBG("%s key for %pMR type %u", hdev->name, bdaddr, type);




 if (type == HCI_LK_CHANGED_COMBINATION &&
     (!conn || conn->remote_auth == 0xff) && old_key_type == 0xff) {
  type = HCI_LK_COMBINATION;
  if (conn)
   conn->key_type = type;
 }

 bacpy(&key->bdaddr, bdaddr);
 memcpy(key->val, val, HCI_LINK_KEY_SIZE);
 key->pin_len = pin_len;

 if (type == HCI_LK_CHANGED_COMBINATION)
  key->type = old_key_type;
 else
  key->type = type;

 if (persistent)
  *persistent = hci_persistent_key(hdev, conn, type,
       old_key_type);

 return key;
}
