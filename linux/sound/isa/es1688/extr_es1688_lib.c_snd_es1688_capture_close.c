
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_es1688 {int * capture_substream; } ;


 struct snd_es1688* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es1688_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_es1688 *chip = snd_pcm_substream_chip(substream);

 chip->capture_substream = ((void*)0);
 return 0;
}
