
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int dummy; } ;





 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_cmd_received (struct nfc_hci_dev*,int,int,struct sk_buff*) ;
 int nfc_hci_event_received (struct nfc_hci_dev*,int,int,struct sk_buff*) ;
 int nfc_hci_resp_received (struct nfc_hci_dev*,int,struct sk_buff*) ;
 int pr_err (char*,int,int) ;

void nfc_hci_hcp_message_rx(struct nfc_hci_dev *hdev, u8 pipe, u8 type,
       u8 instruction, struct sk_buff *skb)
{
 switch (type) {
 case 128:
  nfc_hci_resp_received(hdev, instruction, skb);
  break;
 case 130:
  nfc_hci_cmd_received(hdev, pipe, instruction, skb);
  break;
 case 129:
  nfc_hci_event_received(hdev, pipe, instruction, skb);
  break;
 default:
  pr_err("UNKNOWN MSG Type %d, instruction=%d\n",
         type, instruction);
  kfree_skb(skb);
  break;
 }
}
