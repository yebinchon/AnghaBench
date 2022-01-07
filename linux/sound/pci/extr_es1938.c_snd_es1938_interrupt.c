
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct es1938 {int active; TYPE_5__* rmidi; TYPE_4__* master_volume; TYPE_6__* card; TYPE_3__* master_switch; TYPE_2__* hw_volume; TYPE_1__* hw_switch; int playback1_substream; int playback2_substream; int capture_substream; } ;
typedef int irqreturn_t ;
struct TYPE_12__ {int dev; } ;
struct TYPE_11__ {int private_data; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_7__ {int id; } ;


 int ADC1 ;
 int AUDIO2DMAADDR ;
 int AUDIO2DMACOUNT ;
 int DAC1 ;
 int DAC2 ;
 int DMAADDR ;
 int DMACOUNT ;
 int DMASTATUS ;
 int ESSSB_IREG_AUDIO2CONTROL2 ;
 int IRQCONTROL ;
 int IRQ_RETVAL (int) ;
 int SLDM_REG (struct es1938*,int ) ;
 int SLIO_REG (struct es1938*,int ) ;
 int SLSB_REG (struct es1938*,int ) ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int STATUS ;
 int dev_dbg (int ,char*,...) ;
 unsigned char inb (int ) ;
 unsigned char inl (int ) ;
 unsigned char inw (int ) ;
 int snd_ctl_notify (TYPE_6__*,int ,int *) ;
 int snd_es1938_mixer_bits (struct es1938*,int ,int,int ) ;
 int snd_es1938_mixer_read (struct es1938*,int) ;
 int snd_es1938_mixer_write (struct es1938*,int,int) ;
 int snd_mpu401_uart_interrupt (int,int ) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static irqreturn_t snd_es1938_interrupt(int irq, void *dev_id)
{
 struct es1938 *chip = dev_id;
 unsigned char status, audiostatus;
 int handled = 0;

 status = inb(SLIO_REG(chip, IRQCONTROL));






 if (status & 0x10) {
  handled = 1;
  audiostatus = inb(SLSB_REG(chip, STATUS));
  if (chip->active & ADC1)
   snd_pcm_period_elapsed(chip->capture_substream);
  else if (chip->active & DAC1)
   snd_pcm_period_elapsed(chip->playback2_substream);
 }


 if (status & 0x20) {
  handled = 1;
  snd_es1938_mixer_bits(chip, ESSSB_IREG_AUDIO2CONTROL2, 0x80, 0);
  if (chip->active & DAC2)
   snd_pcm_period_elapsed(chip->playback1_substream);
 }


 if (status & 0x40) {
  int split = snd_es1938_mixer_read(chip, 0x64) & 0x80;
  handled = 1;
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE, &chip->hw_switch->id);
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE, &chip->hw_volume->id);
  if (!split) {
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->master_switch->id);
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->master_volume->id);
  }

  snd_es1938_mixer_write(chip, 0x66, 0x00);
 }


 if (status & 0x80) {




  if (chip->rmidi) {
   handled = 1;
   snd_mpu401_uart_interrupt(irq, chip->rmidi->private_data);
  }
 }
 return IRQ_RETVAL(handled);
}
