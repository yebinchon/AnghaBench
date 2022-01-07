
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_llc {int dummy; } ;
struct llc_nop {int hdev; int (* rcv_to_hci ) (int ,struct sk_buff*) ;} ;


 struct llc_nop* nfc_llc_get_data (struct nfc_llc*) ;
 int stub1 (int ,struct sk_buff*) ;

__attribute__((used)) static void llc_nop_rcv_from_drv(struct nfc_llc *llc, struct sk_buff *skb)
{
 struct llc_nop *llc_nop = nfc_llc_get_data(llc);

 llc_nop->rcv_to_hci(llc_nop->hdev, skb);
}
