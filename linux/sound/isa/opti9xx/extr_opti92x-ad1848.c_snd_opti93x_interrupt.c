
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {scalar_t__ capture_substream; scalar_t__ playback_substream; } ;
struct snd_opti9xx {struct snd_wss* codec; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned char OPTi93X_IRQ_CAPTURE ;
 unsigned char OPTi93X_IRQ_PLAYBACK ;
 int OPTi93X_PORT (struct snd_wss*,int ) ;
 int OPTi9XX_MC_REG (int) ;
 int STATUS ;
 int outb (int,int ) ;
 unsigned char snd_opti9xx_read (struct snd_opti9xx*,int ) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int snd_wss_overrange (struct snd_wss*) ;

__attribute__((used)) static irqreturn_t snd_opti93x_interrupt(int irq, void *dev_id)
{
 struct snd_opti9xx *chip = dev_id;
 struct snd_wss *codec = chip->codec;
 unsigned char status;

 if (!codec)
  return IRQ_HANDLED;

 status = snd_opti9xx_read(chip, OPTi9XX_MC_REG(11));
 if ((status & OPTi93X_IRQ_PLAYBACK) && codec->playback_substream)
  snd_pcm_period_elapsed(codec->playback_substream);
 if ((status & OPTi93X_IRQ_CAPTURE) && codec->capture_substream) {
  snd_wss_overrange(codec);
  snd_pcm_period_elapsed(codec->capture_substream);
 }
 outb(0x00, OPTi93X_PORT(codec, STATUS));
 return IRQ_HANDLED;
}
