
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_emu10k1 {int * pcm_capture_efx_substream; int * capture_interrupt; } ;


 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1_capture_efx_close(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);

 emu->capture_interrupt = ((void*)0);
 emu->pcm_capture_efx_substream = ((void*)0);
 return 0;
}
