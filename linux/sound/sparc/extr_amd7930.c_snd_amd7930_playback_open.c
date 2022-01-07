
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_amd7930 {struct snd_pcm_substream* playback_substream; } ;


 int snd_amd7930_pcm_hw ;
 struct snd_amd7930* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_amd7930_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_amd7930 *amd = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 amd->playback_substream = substream;
 runtime->hw = snd_amd7930_pcm_hw;
 return 0;
}
