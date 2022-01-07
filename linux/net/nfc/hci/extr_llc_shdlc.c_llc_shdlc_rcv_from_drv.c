
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_llc {int dummy; } ;
struct llc_shdlc {int dummy; } ;


 int llc_shdlc_recv_frame (struct llc_shdlc*,struct sk_buff*) ;
 struct llc_shdlc* nfc_llc_get_data (struct nfc_llc*) ;

__attribute__((used)) static void llc_shdlc_rcv_from_drv(struct nfc_llc *llc, struct sk_buff *skb)
{
 struct llc_shdlc *shdlc = nfc_llc_get_data(llc);

 llc_shdlc_recv_frame(shdlc, skb);
}
