
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;


 int aica_chn_halt () ;
 int spu_begin_dma (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_aicapcm_pcm_trigger(struct snd_pcm_substream
       *substream, int cmd)
{
 switch (cmd) {
 case 129:
  spu_begin_dma(substream);
  break;
 case 128:
  aica_chn_halt();
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
