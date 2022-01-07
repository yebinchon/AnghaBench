
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb {int mode; int reg_lock; int capture_substream; int playback_substream; TYPE_1__* rmidi; int (* rmidi_callback ) (int,int ) ;int mixer_lock; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int private_data; } ;


 int IRQ_HANDLED ;
 int SB_DSP4_IRQSTATUS ;
 int SB_DSP_DMA16_OFF ;
 int SB_DSP_DMA8_OFF ;
 unsigned char SB_IRQTYPE_16BIT ;
 unsigned char SB_IRQTYPE_8BIT ;
 unsigned char SB_IRQTYPE_MPUIN ;
 int SB_MODE_CAPTURE_16 ;
 int SB_MODE_CAPTURE_8 ;
 int SB_MODE_PLAYBACK_16 ;
 int SB_MODE_PLAYBACK_8 ;
 int snd_pcm_period_elapsed (int ) ;
 int snd_sb16_csp_update (struct snd_sb*) ;
 int snd_sb_ack_16bit (struct snd_sb*) ;
 int snd_sb_ack_8bit (struct snd_sb*) ;
 int snd_sbdsp_command (struct snd_sb*,int ) ;
 unsigned char snd_sbmixer_read (struct snd_sb*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int,int ) ;

irqreturn_t snd_sb16dsp_interrupt(int irq, void *dev_id)
{
 struct snd_sb *chip = dev_id;
 unsigned char status;
 int ok;

 spin_lock(&chip->mixer_lock);
 status = snd_sbmixer_read(chip, SB_DSP4_IRQSTATUS);
 spin_unlock(&chip->mixer_lock);
 if ((status & SB_IRQTYPE_MPUIN) && chip->rmidi_callback)
  chip->rmidi_callback(irq, chip->rmidi->private_data);
 if (status & SB_IRQTYPE_8BIT) {
  ok = 0;
  if (chip->mode & SB_MODE_PLAYBACK_8) {
   snd_pcm_period_elapsed(chip->playback_substream);
   snd_sb16_csp_update(chip);
   ok++;
  }
  if (chip->mode & SB_MODE_CAPTURE_8) {
   snd_pcm_period_elapsed(chip->capture_substream);
   ok++;
  }
  spin_lock(&chip->reg_lock);
  if (!ok)
   snd_sbdsp_command(chip, SB_DSP_DMA8_OFF);
  snd_sb_ack_8bit(chip);
  spin_unlock(&chip->reg_lock);
 }
 if (status & SB_IRQTYPE_16BIT) {
  ok = 0;
  if (chip->mode & SB_MODE_PLAYBACK_16) {
   snd_pcm_period_elapsed(chip->playback_substream);
   snd_sb16_csp_update(chip);
   ok++;
  }
  if (chip->mode & SB_MODE_CAPTURE_16) {
   snd_pcm_period_elapsed(chip->capture_substream);
   ok++;
  }
  spin_lock(&chip->reg_lock);
  if (!ok)
   snd_sbdsp_command(chip, SB_DSP_DMA16_OFF);
  snd_sb_ack_16bit(chip);
  spin_unlock(&chip->reg_lock);
 }
 return IRQ_HANDLED;
}
