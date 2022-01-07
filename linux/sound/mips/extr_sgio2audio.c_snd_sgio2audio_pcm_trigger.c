
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;


 int snd_sgio2audio_dma_start (struct snd_pcm_substream*) ;
 int snd_sgio2audio_dma_stop (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_sgio2audio_pcm_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
 switch (cmd) {
 case 129:

  snd_sgio2audio_dma_start(substream);
  break;
 case 128:

  snd_sgio2audio_dma_stop(substream);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
