
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int dummy; } ;


 int NFC_HCI_ANY_OPEN_PIPE ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_execute_cmd (struct nfc_hci_dev*,int ,int ,int *,int ,struct sk_buff**) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int nfc_hci_open_pipe(struct nfc_hci_dev *hdev, u8 pipe)
{
 struct sk_buff *skb;
 int r;

 pr_debug("pipe=%d\n", pipe);

 r = nfc_hci_execute_cmd(hdev, pipe, NFC_HCI_ANY_OPEN_PIPE,
    ((void*)0), 0, &skb);
 if (r == 0) {




  kfree_skb(skb);
 }

 return r;
}
