
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int dummy; } ;


 int NFC_HCI_ANY_GET_PARAMETER ;
 int nfc_hci_send_cmd (struct nfc_hci_dev*,int ,int ,int *,int,struct sk_buff**) ;
 int pr_debug (char*,int ,int ) ;

int nfc_hci_get_param(struct nfc_hci_dev *hdev, u8 gate, u8 idx,
        struct sk_buff **skb)
{
 pr_debug("gate=%d regidx=%d\n", gate, idx);

 return nfc_hci_send_cmd(hdev, gate, NFC_HCI_ANY_GET_PARAMETER,
    &idx, 1, skb);
}
