
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int mode; int * playback_substream; } ;
struct snd_pcm_substream {int dummy; } ;


 int SV_MODE_PLAY ;
 struct sonicvibes* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_sonicvibes_playback_close(struct snd_pcm_substream *substream)
{
 struct sonicvibes *sonic = snd_pcm_substream_chip(substream);

 sonic->playback_substream = ((void*)0);
 sonic->mode &= ~SV_MODE_PLAY;
 return 0;
}
