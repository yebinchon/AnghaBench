
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmipci {TYPE_2__* channel; scalar_t__ pcm; TYPE_1__* rmidi; int reg_lock; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int substream; scalar_t__ running; } ;
struct TYPE_3__ {int private_data; } ;


 unsigned int CM_CH0_INT_EN ;
 unsigned int CM_CH1_INT_EN ;
 unsigned int CM_CHINT0 ;
 unsigned int CM_CHINT1 ;
 unsigned int CM_INTR ;
 int CM_REG_INT_HLDCLR ;
 int CM_REG_INT_STATUS ;
 unsigned int CM_UARTINT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,unsigned int) ;
 unsigned int snd_cmipci_read (struct cmipci*,int ) ;
 int snd_cmipci_set_bit (struct cmipci*,int ,unsigned int) ;
 int snd_mpu401_uart_interrupt (int,int ) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_cmipci_interrupt(int irq, void *dev_id)
{
 struct cmipci *cm = dev_id;
 unsigned int status, mask = 0;


 status = snd_cmipci_read(cm, CM_REG_INT_STATUS);
 if (!(status & CM_INTR))
  return IRQ_NONE;


 spin_lock(&cm->reg_lock);
 if (status & CM_CHINT0)
  mask |= CM_CH0_INT_EN;
 if (status & CM_CHINT1)
  mask |= CM_CH1_INT_EN;
 snd_cmipci_clear_bit(cm, CM_REG_INT_HLDCLR, mask);
 snd_cmipci_set_bit(cm, CM_REG_INT_HLDCLR, mask);
 spin_unlock(&cm->reg_lock);

 if (cm->rmidi && (status & CM_UARTINT))
  snd_mpu401_uart_interrupt(irq, cm->rmidi->private_data);

 if (cm->pcm) {
  if ((status & CM_CHINT0) && cm->channel[0].running)
   snd_pcm_period_elapsed(cm->channel[0].substream);
  if ((status & CM_CHINT1) && cm->channel[1].running)
   snd_pcm_period_elapsed(cm->channel[1].substream);
 }
 return IRQ_HANDLED;
}
