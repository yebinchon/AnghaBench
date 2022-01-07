
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixart_mgr {scalar_t__ irq; } ;


 int MIXART_ALLOW_OUTBOUND_DOORBELL ;
 int MIXART_MEM (struct mixart_mgr*,int ) ;
 int MIXART_PCI_OMIMR_OFFSET ;
 int MIXART_REG (struct mixart_mgr*,int ) ;
 int MSG_AGENT_RSC_PROTECTION ;
 int MSG_HOST_RSC_PROTECTION ;
 int writel (int ,int ) ;
 int writel_le (int ,int ) ;

void snd_mixart_init_mailbox(struct mixart_mgr *mgr)
{
 writel( 0, MIXART_MEM( mgr, MSG_HOST_RSC_PROTECTION ) );
 writel( 0, MIXART_MEM( mgr, MSG_AGENT_RSC_PROTECTION ) );


 if(mgr->irq >= 0) {
  writel_le( MIXART_ALLOW_OUTBOUND_DOORBELL, MIXART_REG( mgr, MIXART_PCI_OMIMR_OFFSET));
 }
 return;
}
