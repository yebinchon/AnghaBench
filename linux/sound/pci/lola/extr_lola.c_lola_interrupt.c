
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lola {TYPE_1__* pcm; int reg_lock; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int num_streams; } ;


 int BAR0 ;
 int BAR1 ;
 size_t CAPT ;
 int CORBSTS ;
 int DIINTSTS ;
 int DINTSTS ;
 int DOINTSTS ;
 int IRQ_RETVAL (int) ;
 unsigned char LOLA_CORB_INT_MASK ;
 unsigned int LOLA_DINT_CTRL ;
 unsigned int LOLA_DINT_FIFOERR ;
 unsigned int LOLA_DINT_MUERR ;
 unsigned int LOLA_DSD_STS_BCIS ;
 unsigned int LOLA_DSD_STS_DESE ;
 unsigned char LOLA_RIRB_INT_MASK ;
 int MAX_STREAM_IN_COUNT ;
 size_t PLAY ;
 int RIRBSTS ;
 int STS ;
 unsigned int lola_dsd_read (struct lola*,int,int ) ;
 int lola_dsd_write (struct lola*,int,int ,unsigned int) ;
 int lola_pcm_update (struct lola*,TYPE_1__*,unsigned int) ;
 unsigned char lola_readb (struct lola*,int ,int ) ;
 unsigned int lola_readl (struct lola*,int ,int ) ;
 int lola_update_rirb (struct lola*) ;
 int lola_writeb (struct lola*,int ,int ,unsigned char) ;
 int lola_writel (struct lola*,int ,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t lola_interrupt(int irq, void *dev_id)
{
 struct lola *chip = dev_id;
 unsigned int notify_ins, notify_outs, error_ins, error_outs;
 int handled = 0;
 int i;

 notify_ins = notify_outs = error_ins = error_outs = 0;
 spin_lock(&chip->reg_lock);
 for (;;) {
  unsigned int status, in_sts, out_sts;
  unsigned int reg;

  status = lola_readl(chip, BAR1, DINTSTS);
  if (!status || status == -1)
   break;

  in_sts = lola_readl(chip, BAR1, DIINTSTS);
  out_sts = lola_readl(chip, BAR1, DOINTSTS);


  for (i = 0; in_sts && i < chip->pcm[CAPT].num_streams; i++) {
   if (!(in_sts & (1 << i)))
    continue;
   in_sts &= ~(1 << i);
   reg = lola_dsd_read(chip, i, STS);
   if (reg & LOLA_DSD_STS_DESE)
    error_ins |= (1 << i);
   if (reg & LOLA_DSD_STS_BCIS)
    notify_ins |= (1 << i);

   lola_dsd_write(chip, i, STS, reg);
  }


  for (i = 0; out_sts && i < chip->pcm[PLAY].num_streams; i++) {
   if (!(out_sts & (1 << i)))
    continue;
   out_sts &= ~(1 << i);
   reg = lola_dsd_read(chip, i + MAX_STREAM_IN_COUNT, STS);
   if (reg & LOLA_DSD_STS_DESE)
    error_outs |= (1 << i);
   if (reg & LOLA_DSD_STS_BCIS)
    notify_outs |= (1 << i);
   lola_dsd_write(chip, i + MAX_STREAM_IN_COUNT, STS, reg);
  }

  if (status & LOLA_DINT_CTRL) {
   unsigned char rbsts;
   rbsts = lola_readb(chip, BAR0, RIRBSTS);
   rbsts &= LOLA_RIRB_INT_MASK;
   if (rbsts)
    lola_writeb(chip, BAR0, RIRBSTS, rbsts);
   rbsts = lola_readb(chip, BAR0, CORBSTS);
   rbsts &= LOLA_CORB_INT_MASK;
   if (rbsts)
    lola_writeb(chip, BAR0, CORBSTS, rbsts);

   lola_update_rirb(chip);
  }

  if (status & (LOLA_DINT_FIFOERR | LOLA_DINT_MUERR)) {

   lola_writel(chip, BAR1, DINTSTS,
        (status & (LOLA_DINT_FIFOERR | LOLA_DINT_MUERR)));
  }
  handled = 1;
 }
 spin_unlock(&chip->reg_lock);

 lola_pcm_update(chip, &chip->pcm[CAPT], notify_ins);
 lola_pcm_update(chip, &chip->pcm[PLAY], notify_outs);

 return IRQ_RETVAL(handled);
}
