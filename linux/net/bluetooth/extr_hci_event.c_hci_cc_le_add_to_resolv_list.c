
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int le_resolv_list; int name; } ;
struct hci_cp_le_add_to_resolv_list {int local_irk; int peer_irk; int bdaddr_type; int bdaddr; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_OP_LE_ADD_TO_RESOLV_LIST ;
 int hci_bdaddr_list_add_with_irk (int *,int *,int ,int ,int ) ;
 struct hci_cp_le_add_to_resolv_list* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_le_add_to_resolv_list(struct hci_dev *hdev,
      struct sk_buff *skb)
{
 struct hci_cp_le_add_to_resolv_list *sent;
 __u8 status = *((__u8 *) skb->data);

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (status)
  return;

 sent = hci_sent_cmd_data(hdev, HCI_OP_LE_ADD_TO_RESOLV_LIST);
 if (!sent)
  return;

 hci_bdaddr_list_add_with_irk(&hdev->le_resolv_list, &sent->bdaddr,
    sent->bdaddr_type, sent->peer_irk,
    sent->local_irk);
}
