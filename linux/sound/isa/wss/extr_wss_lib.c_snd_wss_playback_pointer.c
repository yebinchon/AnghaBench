
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int* image; int p_dma_size; int dma1; } ;
struct snd_pcm_substream {int runtime; } ;
typedef int snd_pcm_uframes_t ;


 size_t CS4231_IFACE_CTRL ;
 int CS4231_PLAYBACK_ENABLE ;
 int bytes_to_frames (int ,size_t) ;
 size_t snd_dma_pointer (int ,int ) ;
 struct snd_wss* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_wss_playback_pointer(struct snd_pcm_substream *substream)
{
 struct snd_wss *chip = snd_pcm_substream_chip(substream);
 size_t ptr;

 if (!(chip->image[CS4231_IFACE_CTRL] & CS4231_PLAYBACK_ENABLE))
  return 0;
 ptr = snd_dma_pointer(chip->dma1, chip->p_dma_size);
 return bytes_to_frames(substream->runtime, ptr);
}
