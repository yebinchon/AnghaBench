
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_amd7930 {int dummy; } ;


 int AMD7930_FLAG_PLAYBACK ;
 int snd_amd7930_trigger (struct snd_amd7930*,int ,int) ;
 struct snd_amd7930* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_amd7930_playback_trigger(struct snd_pcm_substream *substream,
     int cmd)
{
 struct snd_amd7930 *amd = snd_pcm_substream_chip(substream);
 return snd_amd7930_trigger(amd, AMD7930_FLAG_PLAYBACK, cmd);
}
