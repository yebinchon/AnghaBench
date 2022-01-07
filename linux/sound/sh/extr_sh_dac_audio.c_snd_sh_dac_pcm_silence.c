
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sh_dac {scalar_t__ empty; scalar_t__ data_buffer; scalar_t__ buffer_end; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;


 int dac_audio_start_timer (struct snd_sh_dac*) ;
 int memset_io (scalar_t__,int ,unsigned long) ;
 struct snd_sh_dac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_sh_dac_pcm_silence(struct snd_pcm_substream *substream,
      int channel, unsigned long pos,
      unsigned long count)
{

 struct snd_sh_dac *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 memset_io(chip->data_buffer + pos, 0, count);
 chip->buffer_end = chip->data_buffer + pos + count;

 if (chip->empty) {
  chip->empty = 0;
  dac_audio_start_timer(chip);
 }

 return 0;
}
