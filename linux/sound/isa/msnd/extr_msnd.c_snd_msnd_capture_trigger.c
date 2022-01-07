
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_msnd {int last_recbank; int flags; } ;


 int EINVAL ;
 int F_READING ;
 int HDEX_RECORD_START ;
 int HDEX_RECORD_STOP ;
 int SNDRV_PCM_TRIGGER_START ;
 int SNDRV_PCM_TRIGGER_STOP ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ snd_msnd_send_dsp_cmd (struct snd_msnd*,int ) ;
 struct snd_msnd* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_msnd_capture_trigger(struct snd_pcm_substream *substream,
        int cmd)
{
 struct snd_msnd *chip = snd_pcm_substream_chip(substream);

 if (cmd == SNDRV_PCM_TRIGGER_START) {
  chip->last_recbank = -1;
  set_bit(F_READING, &chip->flags);
  if (snd_msnd_send_dsp_cmd(chip, HDEX_RECORD_START) == 0)
   return 0;

  clear_bit(F_READING, &chip->flags);
 } else if (cmd == SNDRV_PCM_TRIGGER_STOP) {
  clear_bit(F_READING, &chip->flags);
  snd_msnd_send_dsp_cmd(chip, HDEX_RECORD_STOP);
  return 0;
 }
 return -EINVAL;
}
