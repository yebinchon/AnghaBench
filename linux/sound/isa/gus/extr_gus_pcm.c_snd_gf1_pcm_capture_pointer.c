
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct TYPE_2__ {int dma2; } ;
struct snd_gus_card {int c_pos; int c_dma_size; int c_period_size; TYPE_1__ gf1; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (int ,int) ;
 int snd_dma_pointer (int ,int ) ;
 struct snd_gus_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_gf1_pcm_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_gus_card *gus = snd_pcm_substream_chip(substream);
 int pos = snd_dma_pointer(gus->gf1.dma2, gus->c_period_size);
 pos = bytes_to_frames(substream->runtime, (gus->c_pos + pos) % gus->c_dma_size);
 return pos;
}
