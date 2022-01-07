
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vt1724_pcm_reg {size_t start; scalar_t__ size; scalar_t__ addr; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_ice1712 {TYPE_1__* card; scalar_t__ profi_port; } ;
typedef size_t snd_pcm_uframes_t ;
struct TYPE_4__ {size_t buffer_size; scalar_t__ dma_addr; struct vt1724_pcm_reg* private_data; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_CONTROL ;
 scalar_t__ ICEMT1724 (struct snd_ice1712*,int ) ;
 size_t bytes_to_frames (TYPE_2__*,size_t) ;
 int dev_dbg (int ,char*,int,int) ;
 size_t inl (scalar_t__) ;
 size_t inw (scalar_t__) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_vt1724_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 const struct vt1724_pcm_reg *reg = substream->runtime->private_data;
 size_t ptr;

 if (!(inl(ICEMT1724(ice, DMA_CONTROL)) & reg->start))
  return 0;





 ptr = inw(ice->profi_port + reg->size);
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
