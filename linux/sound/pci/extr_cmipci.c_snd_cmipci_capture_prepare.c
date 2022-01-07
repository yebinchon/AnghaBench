
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct cmipci {int * channel; } ;


 size_t CM_CH_CAPT ;
 int snd_cmipci_pcm_prepare (struct cmipci*,int *,struct snd_pcm_substream*) ;
 struct cmipci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cmipci_capture_prepare(struct snd_pcm_substream *substream)
{
 struct cmipci *cm = snd_pcm_substream_chip(substream);
 return snd_cmipci_pcm_prepare(cm, &cm->channel[CM_CH_CAPT], substream);
}
