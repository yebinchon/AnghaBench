
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int AZF_CODEC_PLAYBACK ;
 int snd_azf3328_pcm_open (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int
snd_azf3328_pcm_playback_open(struct snd_pcm_substream *substream)
{
 return snd_azf3328_pcm_open(substream, AZF_CODEC_PLAYBACK);
}
