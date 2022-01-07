
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mixart_mgr {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int MIXART_HOST_ALL_INTERRUPT_MASKED ;
 int MIXART_OIDI ;
 int MIXART_PCI_ODBR_OFFSET ;
 int MIXART_PCI_OMIMR_OFFSET ;
 int MIXART_PCI_OMISR_OFFSET ;
 int MIXART_REG (struct mixart_mgr*,int ) ;
 int readl (int ) ;
 int readl_le (int ) ;
 int writel (int,int ) ;
 int writel_le (int,int ) ;

irqreturn_t snd_mixart_interrupt(int irq, void *dev_id)
{
 struct mixart_mgr *mgr = dev_id;
 u32 it_reg;

 it_reg = readl_le(MIXART_REG(mgr, MIXART_PCI_OMISR_OFFSET));
 if( !(it_reg & MIXART_OIDI) ) {

  return IRQ_NONE;
 }


 writel_le(MIXART_HOST_ALL_INTERRUPT_MASKED, MIXART_REG(mgr, MIXART_PCI_OMIMR_OFFSET));


 it_reg = readl(MIXART_REG(mgr, MIXART_PCI_ODBR_OFFSET));
 writel(it_reg, MIXART_REG(mgr, MIXART_PCI_ODBR_OFFSET));


 writel_le( MIXART_OIDI, MIXART_REG(mgr, MIXART_PCI_OMISR_OFFSET) );

 return IRQ_WAKE_THREAD;
}
