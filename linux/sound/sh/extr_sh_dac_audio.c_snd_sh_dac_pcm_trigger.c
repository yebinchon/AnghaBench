
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sh_dac {int empty; int processed; int data_buffer; int buffer_end; int buffer_begin; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;


 int dac_audio_start_timer (struct snd_sh_dac*) ;
 int dac_audio_stop_timer (struct snd_sh_dac*) ;
 struct snd_sh_dac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_sh_dac_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_sh_dac *chip = snd_pcm_substream_chip(substream);

 switch (cmd) {
 case 129:
  dac_audio_start_timer(chip);
  break;
 case 128:
  chip->buffer_begin = chip->buffer_end = chip->data_buffer;
  chip->processed = 0;
  chip->empty = 1;
  dac_audio_stop_timer(chip);
  break;
 default:
   return -EINVAL;
 }

 return 0;
}
