
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct intel8x0 {TYPE_1__* ichd; } ;
struct TYPE_2__ {int * substream; } ;


 size_t ICHD_PCMOUT ;
 struct intel8x0* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_intel8x0_playback_close(struct snd_pcm_substream *substream)
{
 struct intel8x0 *chip = snd_pcm_substream_chip(substream);

 chip->ichd[ICHD_PCMOUT].substream = ((void*)0);
 return 0;
}
