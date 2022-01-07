
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_m3 {int dummy; } ;


 int snd_m3_substream_close (struct snd_m3*,struct snd_pcm_substream*) ;
 struct snd_m3* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_m3_capture_close(struct snd_pcm_substream *subs)
{
 struct snd_m3 *chip = snd_pcm_substream_chip(subs);

 snd_m3_substream_close(chip, subs);
 return 0;
}
