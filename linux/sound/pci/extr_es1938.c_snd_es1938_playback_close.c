
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int number; } ;
struct es1938 {int * playback2_substream; int * playback1_substream; } ;


 int EINVAL ;
 int snd_BUG () ;
 struct es1938* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es1938_playback_close(struct snd_pcm_substream *substream)
{
 struct es1938 *chip = snd_pcm_substream_chip(substream);

 switch (substream->number) {
 case 0:
  chip->playback1_substream = ((void*)0);
  break;
 case 1:
  chip->playback2_substream = ((void*)0);
  break;
 default:
  snd_BUG();
  return -EINVAL;
 }
 return 0;
}
