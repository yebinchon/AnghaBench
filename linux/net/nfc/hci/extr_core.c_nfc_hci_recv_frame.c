
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int llc; } ;


 int nfc_llc_rcv_from_drv (int ,struct sk_buff*) ;

void nfc_hci_recv_frame(struct nfc_hci_dev *hdev, struct sk_buff *skb)
{
 nfc_llc_rcv_from_drv(hdev->llc, skb);
}
