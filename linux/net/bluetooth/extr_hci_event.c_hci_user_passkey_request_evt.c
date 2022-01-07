
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_user_passkey_req {int bdaddr; } ;
struct hci_dev {int name; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;
 int HCI_MGMT ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int mgmt_user_passkey_request (struct hci_dev*,int *,int ,int ) ;

__attribute__((used)) static void hci_user_passkey_request_evt(struct hci_dev *hdev,
      struct sk_buff *skb)
{
 struct hci_ev_user_passkey_req *ev = (void *) skb->data;

 BT_DBG("%s", hdev->name);

 if (hci_dev_test_flag(hdev, HCI_MGMT))
  mgmt_user_passkey_request(hdev, &ev->bdaddr, ACL_LINK, 0);
}
