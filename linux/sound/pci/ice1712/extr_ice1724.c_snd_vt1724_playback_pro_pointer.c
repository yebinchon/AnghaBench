
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_ice1712 {TYPE_1__* card; } ;
typedef size_t snd_pcm_uframes_t ;
struct TYPE_4__ {size_t dma_addr; size_t buffer_size; scalar_t__ period_size; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_CONTROL ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int PLAYBACK_ADDR ;
 int PLAYBACK_SIZE ;
 int VT1724_PDMA0_START ;
 size_t bytes_to_frames (TYPE_2__*,size_t) ;
 int dev_dbg (int ,char*,...) ;
 int inl (int ) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_vt1724_playback_pro_pointer(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 size_t ptr;

 if (!(inl(ICEMT1724(ice, DMA_CONTROL)) & VT1724_PDMA0_START))
  return 0;
 ptr = inl(ICEMT1724(ice, PLAYBACK_SIZE)) & 0xffffff;
 ptr = (ptr + 1) << 2;
 ptr = bytes_to_frames(substream->runtime, ptr);
 if (!ptr)
  ;
 else if (ptr <= substream->runtime->buffer_size)
  ptr = substream->runtime->buffer_size - ptr;
 else {
  dev_dbg(ice->card->dev, "invalid ptr %d (size=%d)\n",
      (int)ptr, (int)substream->runtime->buffer_size);
  ptr = 0;
 }

 return ptr;
}
