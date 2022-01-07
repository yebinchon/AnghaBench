
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nci_dev {int dummy; } ;





 int NCI_STATUS_OK ;
 int kfree_skb (struct sk_buff*) ;
 int nci_hci_cmd_received (struct nci_dev*,int,int,struct sk_buff*) ;
 int nci_hci_event_received (struct nci_dev*,int,int,struct sk_buff*) ;
 int nci_hci_resp_received (struct nci_dev*,int,int,struct sk_buff*) ;
 int nci_req_complete (struct nci_dev*,int ) ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static void nci_hci_hcp_message_rx(struct nci_dev *ndev, u8 pipe,
       u8 type, u8 instruction, struct sk_buff *skb)
{
 switch (type) {
 case 128:
  nci_hci_resp_received(ndev, pipe, instruction, skb);
  break;
 case 130:
  nci_hci_cmd_received(ndev, pipe, instruction, skb);
  break;
 case 129:
  nci_hci_event_received(ndev, pipe, instruction, skb);
  break;
 default:
  pr_err("UNKNOWN MSG Type %d, instruction=%d\n",
         type, instruction);
  kfree_skb(skb);
  break;
 }

 nci_req_complete(ndev, NCI_STATUS_OK);
}
