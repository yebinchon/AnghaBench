
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_keypress_notify {int type; int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {int passkey_entered; int passkey_notify; int dst_type; int type; int dst; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;





 int HCI_MGMT ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int mgmt_user_passkey_notify (struct hci_dev*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void hci_keypress_notify_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_keypress_notify *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (!conn)
  return;

 switch (ev->type) {
 case 128:
  conn->passkey_entered = 0;
  return;

 case 130:
  conn->passkey_entered++;
  break;

 case 129:
  conn->passkey_entered--;
  break;

 case 132:
  conn->passkey_entered = 0;
  break;

 case 131:
  return;
 }

 if (hci_dev_test_flag(hdev, HCI_MGMT))
  mgmt_user_passkey_notify(hdev, &conn->dst, conn->type,
      conn->dst_type, conn->passkey_notify,
      conn->passkey_entered);
}
