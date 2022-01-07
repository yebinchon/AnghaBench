
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_simple_pair_complete {scalar_t__ status; int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {int remote_auth; int flags; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;
 int HCI_CONN_AUTH_PEND ;
 int hci_conn_drop (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_auth_failed (struct hci_conn*,scalar_t__) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hci_simple_pair_complete_evt(struct hci_dev *hdev,
      struct sk_buff *skb)
{
 struct hci_ev_simple_pair_complete *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (!conn)
  goto unlock;


 conn->remote_auth = 0xff;






 if (!test_bit(HCI_CONN_AUTH_PEND, &conn->flags) && ev->status)
  mgmt_auth_failed(conn, ev->status);

 hci_conn_drop(conn);

unlock:
 hci_dev_unlock(hdev);
}
