
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int number; } ;
typedef int snd_pcm_uframes_t ;


 int EINVAL ;
 int snd_BUG () ;
 int snd_es1938_playback1_pointer (struct snd_pcm_substream*) ;
 int snd_es1938_playback2_pointer (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_es1938_playback_pointer(struct snd_pcm_substream *substream)
{
 switch (substream->number) {
 case 0:
  return snd_es1938_playback1_pointer(substream);
 case 1:
  return snd_es1938_playback2_pointer(substream);
 }
 snd_BUG();
 return -EINVAL;
}
