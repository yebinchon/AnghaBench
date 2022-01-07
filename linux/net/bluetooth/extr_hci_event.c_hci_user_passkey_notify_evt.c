
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_user_passkey_notify {int passkey; int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {scalar_t__ passkey_entered; int passkey_notify; int dst_type; int type; int dst; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;
 int HCI_MGMT ;
 int __le32_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int mgmt_user_passkey_notify (struct hci_dev*,int *,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void hci_user_passkey_notify_evt(struct hci_dev *hdev,
     struct sk_buff *skb)
{
 struct hci_ev_user_passkey_notify *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (!conn)
  return;

 conn->passkey_notify = __le32_to_cpu(ev->passkey);
 conn->passkey_entered = 0;

 if (hci_dev_test_flag(hdev, HCI_MGMT))
  mgmt_user_passkey_notify(hdev, &conn->dst, conn->type,
      conn->dst_type, conn->passkey_notify,
      conn->passkey_entered);
}
