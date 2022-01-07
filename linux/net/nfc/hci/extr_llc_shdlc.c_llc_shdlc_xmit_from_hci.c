
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfc_llc {int dummy; } ;
struct llc_shdlc {int sm_work; int send_q; } ;


 struct llc_shdlc* nfc_llc_get_data (struct nfc_llc*) ;
 int schedule_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int llc_shdlc_xmit_from_hci(struct nfc_llc *llc, struct sk_buff *skb)
{
 struct llc_shdlc *shdlc = nfc_llc_get_data(llc);

 skb_queue_tail(&shdlc->send_q, skb);

 schedule_work(&shdlc->sm_work);

 return 0;
}
