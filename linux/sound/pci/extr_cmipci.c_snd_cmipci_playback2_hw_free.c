
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct cmipci {int * channel; } ;


 int snd_cmipci_hw_free (struct snd_pcm_substream*) ;
 int snd_cmipci_silence_hack (struct cmipci*,int *) ;
 struct cmipci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cmipci_playback2_hw_free(struct snd_pcm_substream *substream)
{
 struct cmipci *cm = snd_pcm_substream_chip(substream);
 snd_cmipci_silence_hack(cm, &cm->channel[1]);
 return snd_cmipci_hw_free(substream);
}
