
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {int dummy; } ;
struct snd_trident_pcm_mixer {int * voice; } ;
struct snd_trident {struct snd_trident_pcm_mixer* pcm_mixer; } ;
struct snd_pcm_substream {size_t number; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_trident_notify_pcm_change (struct snd_trident*,struct snd_trident_pcm_mixer*,size_t,int ) ;

__attribute__((used)) static int snd_trident_pcm_mixer_free(struct snd_trident *trident, struct snd_trident_voice *voice, struct snd_pcm_substream *substream)
{
 struct snd_trident_pcm_mixer *tmix;

 if (snd_BUG_ON(!trident || !substream))
  return -EINVAL;
 tmix = &trident->pcm_mixer[substream->number];
 tmix->voice = ((void*)0);
 snd_trident_notify_pcm_change(trident, tmix, substream->number, 0);
 return 0;
}
