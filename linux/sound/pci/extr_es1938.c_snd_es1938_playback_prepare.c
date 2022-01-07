
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int number; } ;


 int EINVAL ;
 int snd_BUG () ;
 int snd_es1938_playback1_prepare (struct snd_pcm_substream*) ;
 int snd_es1938_playback2_prepare (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es1938_playback_prepare(struct snd_pcm_substream *substream)
{
 switch (substream->number) {
 case 0:
  return snd_es1938_playback1_prepare(substream);
 case 1:
  return snd_es1938_playback2_prepare(substream);
 }
 snd_BUG();
 return -EINVAL;
}
