
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llc {int dummy; } ;
struct llc_shdlc {int ack_pending_q; int send_q; int rcv_q; } ;


 int kfree (struct llc_shdlc*) ;
 struct llc_shdlc* nfc_llc_get_data (struct nfc_llc*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void llc_shdlc_deinit(struct nfc_llc *llc)
{
 struct llc_shdlc *shdlc = nfc_llc_get_data(llc);

 skb_queue_purge(&shdlc->rcv_q);
 skb_queue_purge(&shdlc->send_q);
 skb_queue_purge(&shdlc->ack_pending_q);

 kfree(shdlc);
}
