
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int PCM_REAR_CHANNEL ;
 int snd_ca0106_pcm_open_playback_channel (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int snd_ca0106_pcm_open_playback_rear(struct snd_pcm_substream *substream)
{
 return snd_ca0106_pcm_open_playback_channel(substream, PCM_REAR_CHANNEL);
}
