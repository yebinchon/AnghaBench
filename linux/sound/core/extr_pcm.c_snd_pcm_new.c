
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int dummy; } ;
struct snd_card {int dummy; } ;


 int _snd_pcm_new (struct snd_card*,char const*,int,int,int,int,struct snd_pcm**) ;

int snd_pcm_new(struct snd_card *card, const char *id, int device,
  int playback_count, int capture_count, struct snd_pcm **rpcm)
{
 return _snd_pcm_new(card, id, device, playback_count, capture_count,
   0, rpcm);
}
