
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ps3_card_info {int dma_lock; scalar_t__* dma_start_vaddr; scalar_t__* dma_last_transfer_vaddr; } ;
struct snd_pcm_substream {int runtime; } ;
typedef int snd_pcm_uframes_t ;


 size_t SND_PS3_CH_L ;
 int bytes_to_frames (int ,size_t) ;
 struct snd_ps3_card_info* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_ps3_pcm_pointer(
 struct snd_pcm_substream *substream)
{
 struct snd_ps3_card_info *card = snd_pcm_substream_chip(substream);
 size_t bytes;
 snd_pcm_uframes_t ret;

 spin_lock(&card->dma_lock);
 {
  bytes = (size_t)(card->dma_last_transfer_vaddr[SND_PS3_CH_L] -
     card->dma_start_vaddr[SND_PS3_CH_L]);
 }
 spin_unlock(&card->dma_lock);

 ret = bytes_to_frames(substream->runtime, bytes * 2);

 return ret;
}
