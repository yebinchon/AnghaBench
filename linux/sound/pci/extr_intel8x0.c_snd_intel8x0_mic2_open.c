
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct intel8x0 {int * ichd; } ;


 size_t ICHD_MIC2 ;
 int snd_intel8x0_pcm_open (struct snd_pcm_substream*,int *) ;
 struct intel8x0* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_intel8x0_mic2_open(struct snd_pcm_substream *substream)
{
 struct intel8x0 *chip = snd_pcm_substream_chip(substream);

 return snd_intel8x0_pcm_open(substream, &chip->ichd[ICHD_MIC2]);
}
