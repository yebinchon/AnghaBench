
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sh_dac {int buffer_begin; int data_buffer; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 struct snd_sh_dac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static
snd_pcm_uframes_t snd_sh_dac_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_sh_dac *chip = snd_pcm_substream_chip(substream);
 int pointer = chip->buffer_begin - chip->data_buffer;

 return pointer;
}
