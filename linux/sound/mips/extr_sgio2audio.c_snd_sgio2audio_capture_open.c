
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sgio2audio {int * channel; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int * private_data; int hw; } ;


 struct snd_sgio2audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sgio2audio_pcm_hw ;

__attribute__((used)) static int snd_sgio2audio_capture_open(struct snd_pcm_substream *substream)
{
 struct snd_sgio2audio *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 runtime->hw = snd_sgio2audio_pcm_hw;
 runtime->private_data = &chip->channel[0];
 return 0;
}
