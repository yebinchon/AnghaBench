
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_io_capa_reply {int authentication; int capability; int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {int remote_auth; int remote_cap; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static void hci_io_capa_reply_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_io_capa_reply *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (!conn)
  goto unlock;

 conn->remote_cap = ev->capability;
 conn->remote_auth = ev->authentication;

unlock:
 hci_dev_unlock(hdev);
}
