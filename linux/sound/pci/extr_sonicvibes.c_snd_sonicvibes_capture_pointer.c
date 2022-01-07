
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int enable; size_t c_dma_size; } ;
struct snd_pcm_substream {int runtime; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (int ,size_t) ;
 struct sonicvibes* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 size_t snd_sonicvibes_getdmac (struct sonicvibes*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_sonicvibes_capture_pointer(struct snd_pcm_substream *substream)
{
 struct sonicvibes *sonic = snd_pcm_substream_chip(substream);
 size_t ptr;
 if (!(sonic->enable & 2))
  return 0;
 ptr = sonic->c_dma_size - snd_sonicvibes_getdmac(sonic);
 return bytes_to_frames(substream->runtime, ptr);
}
