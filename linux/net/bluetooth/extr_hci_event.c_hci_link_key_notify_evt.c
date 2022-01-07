
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct link_key {scalar_t__ type; int list; int pin_len; } ;
struct hci_ev_link_key_notify {scalar_t__ key_type; int link_key; int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {int flags; int pin_length; int disc_timeout; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;
 int HCI_CONN_FLUSH_KEY ;
 int HCI_CONN_NEW_LINK_KEY ;
 int HCI_DISCONN_TIMEOUT ;
 int HCI_KEEP_DEBUG_KEYS ;
 scalar_t__ HCI_LK_CHANGED_COMBINATION ;
 scalar_t__ HCI_LK_DEBUG_COMBINATION ;
 int HCI_MGMT ;
 int clear_bit (int ,int *) ;
 int conn_set_key (struct hci_conn*,scalar_t__,int ) ;
 struct link_key* hci_add_link_key (struct hci_dev*,struct hci_conn*,int *,int ,scalar_t__,int ,int*) ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int kfree_rcu (struct link_key*,int ) ;
 int list_del_rcu (int *) ;
 int mgmt_new_link_key (struct hci_dev*,struct link_key*,int) ;
 int rcu ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hci_link_key_notify_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_link_key_notify *ev = (void *) skb->data;
 struct hci_conn *conn;
 struct link_key *key;
 bool persistent;
 u8 pin_len = 0;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (!conn)
  goto unlock;

 hci_conn_hold(conn);
 conn->disc_timeout = HCI_DISCONN_TIMEOUT;
 hci_conn_drop(conn);

 set_bit(HCI_CONN_NEW_LINK_KEY, &conn->flags);
 conn_set_key(conn, ev->key_type, conn->pin_length);

 if (!hci_dev_test_flag(hdev, HCI_MGMT))
  goto unlock;

 key = hci_add_link_key(hdev, conn, &ev->bdaddr, ev->link_key,
           ev->key_type, pin_len, &persistent);
 if (!key)
  goto unlock;




 if (ev->key_type == HCI_LK_CHANGED_COMBINATION)
  conn_set_key(conn, key->type, key->pin_len);

 mgmt_new_link_key(hdev, key, persistent);






 if (key->type == HCI_LK_DEBUG_COMBINATION &&
     !hci_dev_test_flag(hdev, HCI_KEEP_DEBUG_KEYS)) {
  list_del_rcu(&key->list);
  kfree_rcu(key, rcu);
  goto unlock;
 }

 if (persistent)
  clear_bit(HCI_CONN_FLUSH_KEY, &conn->flags);
 else
  set_bit(HCI_CONN_FLUSH_KEY, &conn->flags);

unlock:
 hci_dev_unlock(hdev);
}
