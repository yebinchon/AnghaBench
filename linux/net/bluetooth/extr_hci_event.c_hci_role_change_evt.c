
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_role_change {int role; int status; int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {int flags; int role; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_CONN_RSWITCH_PEND ;
 int clear_bit (int ,int *) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_role_switch_cfm (struct hci_conn*,int ,int ) ;

__attribute__((used)) static void hci_role_change_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_role_change *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (conn) {
  if (!ev->status)
   conn->role = ev->role;

  clear_bit(HCI_CONN_RSWITCH_PEND, &conn->flags);

  hci_role_switch_cfm(conn, ev->status, ev->role);
 }

 hci_dev_unlock(hdev);
}
