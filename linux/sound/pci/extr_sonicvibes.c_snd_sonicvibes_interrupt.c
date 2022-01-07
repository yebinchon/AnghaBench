
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sonicvibes {TYPE_3__* master_volume; TYPE_4__* card; TYPE_2__* master_mute; int reg_lock; TYPE_1__* rmidi; int capture_substream; int playback_substream; scalar_t__ pcm; int irqmask; } ;
typedef int irqreturn_t ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int private_data; } ;


 int IRQMASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int STATUS ;
 unsigned char SV_DMAA_IRQ ;
 unsigned char SV_DMAC_IRQ ;
 int SV_IREG_LEFT_ANALOG ;
 int SV_IREG_RIGHT_ANALOG ;
 int SV_IREG_UD_BUTTON ;
 unsigned char SV_MIDI_IRQ ;
 int SV_REG (struct sonicvibes*,int ) ;
 unsigned char SV_UD_IRQ ;
 int dev_err (int ,char*) ;
 unsigned char inb (int ) ;
 int outb (int ,int ) ;
 int snd_ctl_notify (TYPE_4__*,int ,int *) ;
 int snd_mpu401_uart_interrupt (int,int ) ;
 int snd_pcm_period_elapsed (int ) ;
 void* snd_sonicvibes_in1 (struct sonicvibes*,int ) ;
 int snd_sonicvibes_out1 (struct sonicvibes*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_sonicvibes_interrupt(int irq, void *dev_id)
{
 struct sonicvibes *sonic = dev_id;
 unsigned char status;

 status = inb(SV_REG(sonic, STATUS));
 if (!(status & (SV_DMAA_IRQ | SV_DMAC_IRQ | SV_MIDI_IRQ)))
  return IRQ_NONE;
 if (status == 0xff) {
  outb(sonic->irqmask = ~0, SV_REG(sonic, IRQMASK));
  dev_err(sonic->card->dev,
   "IRQ failure - interrupts disabled!!\n");
  return IRQ_HANDLED;
 }
 if (sonic->pcm) {
  if (status & SV_DMAA_IRQ)
   snd_pcm_period_elapsed(sonic->playback_substream);
  if (status & SV_DMAC_IRQ)
   snd_pcm_period_elapsed(sonic->capture_substream);
 }
 if (sonic->rmidi) {
  if (status & SV_MIDI_IRQ)
   snd_mpu401_uart_interrupt(irq, sonic->rmidi->private_data);
 }
 if (status & SV_UD_IRQ) {
  unsigned char udreg;
  int vol, oleft, oright, mleft, mright;

  spin_lock(&sonic->reg_lock);
  udreg = snd_sonicvibes_in1(sonic, SV_IREG_UD_BUTTON);
  vol = udreg & 0x3f;
  if (!(udreg & 0x40))
   vol = -vol;
  oleft = mleft = snd_sonicvibes_in1(sonic, SV_IREG_LEFT_ANALOG);
  oright = mright = snd_sonicvibes_in1(sonic, SV_IREG_RIGHT_ANALOG);
  oleft &= 0x1f;
  oright &= 0x1f;
  oleft += vol;
  if (oleft < 0)
   oleft = 0;
  if (oleft > 0x1f)
   oleft = 0x1f;
  oright += vol;
  if (oright < 0)
   oright = 0;
  if (oright > 0x1f)
   oright = 0x1f;
  if (udreg & 0x80) {
   mleft ^= 0x80;
   mright ^= 0x80;
  }
  oleft |= mleft & 0x80;
  oright |= mright & 0x80;
  snd_sonicvibes_out1(sonic, SV_IREG_LEFT_ANALOG, oleft);
  snd_sonicvibes_out1(sonic, SV_IREG_RIGHT_ANALOG, oright);
  spin_unlock(&sonic->reg_lock);
  snd_ctl_notify(sonic->card, SNDRV_CTL_EVENT_MASK_VALUE, &sonic->master_mute->id);
  snd_ctl_notify(sonic->card, SNDRV_CTL_EVENT_MASK_VALUE, &sonic->master_volume->id);
 }
 return IRQ_HANDLED;
}
