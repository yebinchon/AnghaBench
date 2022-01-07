
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_bt87x {unsigned int interrupt_mask; int reg_control; int current_line; int lines; int substream; TYPE_1__* card; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int CTL_ACAP_EN ;
 unsigned int ERROR_INTERRUPTS ;
 unsigned int INT_FBUS ;
 unsigned int INT_FTRGT ;
 unsigned int INT_OCERR ;
 unsigned int INT_PABORT ;
 unsigned int INT_PPERR ;
 unsigned int INT_RIPERR ;
 unsigned int INT_RISCI ;
 unsigned int INT_RISCS_SHIFT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_INT_STAT ;
 int dev_err (int ,char*,unsigned int) ;
 int dev_warn (int ,char*,unsigned int) ;
 int snd_bt87x_pci_error (struct snd_bt87x*,unsigned int) ;
 unsigned int snd_bt87x_readl (struct snd_bt87x*,int ) ;
 int snd_bt87x_writel (struct snd_bt87x*,int ,unsigned int) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static irqreturn_t snd_bt87x_interrupt(int irq, void *dev_id)
{
 struct snd_bt87x *chip = dev_id;
 unsigned int status, irq_status;

 status = snd_bt87x_readl(chip, REG_INT_STAT);
 irq_status = status & chip->interrupt_mask;
 if (!irq_status)
  return IRQ_NONE;
 snd_bt87x_writel(chip, REG_INT_STAT, irq_status);

 if (irq_status & ERROR_INTERRUPTS) {
  if (irq_status & (INT_FBUS | INT_FTRGT))
   dev_warn(chip->card->dev,
     "FIFO overrun, status %#08x\n", status);
  if (irq_status & INT_OCERR)
   dev_err(chip->card->dev,
    "internal RISC error, status %#08x\n", status);
  if (irq_status & (INT_PPERR | INT_RIPERR | INT_PABORT))
   snd_bt87x_pci_error(chip, irq_status);
 }
 if ((irq_status & INT_RISCI) && (chip->reg_control & CTL_ACAP_EN)) {
  int current_block, irq_block;


  chip->current_line = (chip->current_line + 1) % chip->lines;

  current_block = chip->current_line * 16 / chip->lines;
  irq_block = status >> INT_RISCS_SHIFT;
  if (current_block != irq_block)
   chip->current_line = (irq_block * chip->lines + 15) / 16;

  snd_pcm_period_elapsed(chip->substream);
 }
 return IRQ_HANDLED;
}
