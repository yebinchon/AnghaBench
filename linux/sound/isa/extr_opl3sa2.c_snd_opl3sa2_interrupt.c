
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_opl3sa2 {TYPE_3__* master_volume; TYPE_2__* master_switch; int wss; TYPE_1__* rmidi; int synth; } ;
struct snd_card {struct snd_opl3sa2* private_data; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_4__ {int private_data; } ;


 int IRQ_NONE ;
 int IRQ_RETVAL (int) ;
 int OPL3SA2_IRQ_STATUS ;
 int OPL3SA2_MASTER_LEFT ;
 int OPL3SA2_MASTER_RIGHT ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_notify (struct snd_card*,int ,int *) ;
 int snd_mpu401_uart_interrupt (int,int ) ;
 int snd_opl3_interrupt (int ) ;
 unsigned short snd_opl3sa2_read (struct snd_opl3sa2*,int ) ;
 int snd_wss_interrupt (int,int ) ;

__attribute__((used)) static irqreturn_t snd_opl3sa2_interrupt(int irq, void *dev_id)
{
 unsigned short status;
 struct snd_card *card = dev_id;
 struct snd_opl3sa2 *chip;
 int handled = 0;

 if (card == ((void*)0))
  return IRQ_NONE;

 chip = card->private_data;
 status = snd_opl3sa2_read(chip, OPL3SA2_IRQ_STATUS);

 if (status & 0x20) {
  handled = 1;
  snd_opl3_interrupt(chip->synth);
 }

 if ((status & 0x10) && chip->rmidi != ((void*)0)) {
  handled = 1;
  snd_mpu401_uart_interrupt(irq, chip->rmidi->private_data);
 }

 if (status & 0x07) {
  handled = 1;
  snd_wss_interrupt(irq, chip->wss);
 }

 if (status & 0x40) {
  handled = 1;

  snd_opl3sa2_read(chip, OPL3SA2_MASTER_RIGHT);
  snd_opl3sa2_read(chip, OPL3SA2_MASTER_LEFT);
  if (chip->master_switch && chip->master_volume) {
   snd_ctl_notify(card, SNDRV_CTL_EVENT_MASK_VALUE,
     &chip->master_switch->id);
   snd_ctl_notify(card, SNDRV_CTL_EVENT_MASK_VALUE,
     &chip->master_volume->id);
  }
 }
 return IRQ_RETVAL(handled);
}
