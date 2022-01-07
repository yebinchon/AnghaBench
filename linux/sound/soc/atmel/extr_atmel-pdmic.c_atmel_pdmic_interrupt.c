
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_pdmic {int substream; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PDMIC_CR ;
 int PDMIC_CR_ENPDM_DIS ;
 int PDMIC_CR_ENPDM_MASK ;
 int PDMIC_CR_ENPDM_SHIFT ;
 int PDMIC_ISR ;
 int PDMIC_ISR_OVRE ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int snd_pcm_stop_xrun (int ) ;

__attribute__((used)) static irqreturn_t atmel_pdmic_interrupt(int irq, void *dev_id)
{
 struct atmel_pdmic *dd = (struct atmel_pdmic *)dev_id;
 u32 pdmic_isr;
 irqreturn_t ret = IRQ_NONE;

 regmap_read(dd->regmap, PDMIC_ISR, &pdmic_isr);

 if (pdmic_isr & PDMIC_ISR_OVRE) {
  regmap_update_bits(dd->regmap, PDMIC_CR, PDMIC_CR_ENPDM_MASK,
       PDMIC_CR_ENPDM_DIS << PDMIC_CR_ENPDM_SHIFT);

  snd_pcm_stop_xrun(dd->substream);

  ret = IRQ_HANDLED;
 }

 return ret;
}
