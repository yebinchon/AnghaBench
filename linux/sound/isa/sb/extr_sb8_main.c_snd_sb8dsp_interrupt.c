
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int mode; int capture_format; struct snd_pcm_substream* capture_substream; int hardware; int playback_format; struct snd_pcm_substream* playback_substream; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SB_DSP_INPUT ;
 int SB_DSP_OUTPUT ;
 int SB_HW_JAZZ16 ;




 int SNDRV_PCM_TRIGGER_START ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int snd_sb8_capture_trigger (struct snd_pcm_substream*,int ) ;
 int snd_sb8_playback_trigger (struct snd_pcm_substream*,int ) ;
 int snd_sb_ack_8bit (struct snd_sb*) ;

irqreturn_t snd_sb8dsp_interrupt(struct snd_sb *chip)
{
 struct snd_pcm_substream *substream;

 snd_sb_ack_8bit(chip);
 switch (chip->mode) {
 case 129:
  if (chip->hardware != SB_HW_JAZZ16)
   break;

 case 128:
  substream = chip->playback_substream;
  if (chip->playback_format == SB_DSP_OUTPUT)
       snd_sb8_playback_trigger(substream, SNDRV_PCM_TRIGGER_START);
  snd_pcm_period_elapsed(substream);
  break;
 case 131:
  if (chip->hardware != SB_HW_JAZZ16)
   break;

 case 130:
  substream = chip->capture_substream;
  if (chip->capture_format == SB_DSP_INPUT)
       snd_sb8_capture_trigger(substream, SNDRV_PCM_TRIGGER_START);
  snd_pcm_period_elapsed(substream);
  break;
 }
 return IRQ_HANDLED;
}
