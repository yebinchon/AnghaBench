
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int mode; unsigned short locked_rate; int reg_lock; } ;


 unsigned short SB_DSP_SAMPLE_RATE_IN ;
 unsigned short SB_DSP_SAMPLE_RATE_OUT ;
 int SB_MODE_CAPTURE_16 ;
 int SB_MODE_PLAYBACK_16 ;
 int SB_RATE_LOCK ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_sb_ack_16bit (struct snd_sb*) ;
 int snd_sb_ack_8bit (struct snd_sb*) ;
 int snd_sbdsp_command (struct snd_sb*,unsigned short) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_sb16_setup_rate(struct snd_sb *chip,
    unsigned short rate,
    int channel)
{
 unsigned long flags;

 spin_lock_irqsave(&chip->reg_lock, flags);
 if (chip->mode & (channel == SNDRV_PCM_STREAM_PLAYBACK ? SB_MODE_PLAYBACK_16 : SB_MODE_CAPTURE_16))
  snd_sb_ack_16bit(chip);
 else
  snd_sb_ack_8bit(chip);
 if (!(chip->mode & SB_RATE_LOCK)) {
  chip->locked_rate = rate;
  snd_sbdsp_command(chip, SB_DSP_SAMPLE_RATE_IN);
  snd_sbdsp_command(chip, rate >> 8);
  snd_sbdsp_command(chip, rate & 0xff);
  snd_sbdsp_command(chip, SB_DSP_SAMPLE_RATE_OUT);
  snd_sbdsp_command(chip, rate >> 8);
  snd_sbdsp_command(chip, rate & 0xff);
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
