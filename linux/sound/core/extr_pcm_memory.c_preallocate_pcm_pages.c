
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; int type; } ;
struct snd_dma_buffer {scalar_t__ bytes; TYPE_1__ dev; } ;
struct snd_pcm_substream {TYPE_3__* pcm; int number; scalar_t__ stream; struct snd_dma_buffer dma_buffer; } ;
struct TYPE_6__ {int name; int device; TYPE_2__* card; } ;
struct TYPE_5__ {int number; } ;


 int ENOMEM ;
 int pr_warn (char*,int ,int ,char,int ,int ,size_t) ;
 int snd_dma_alloc_pages (int ,int ,size_t,struct snd_dma_buffer*) ;
 size_t snd_minimum_buffer ;

__attribute__((used)) static int preallocate_pcm_pages(struct snd_pcm_substream *substream, size_t size)
{
 struct snd_dma_buffer *dmab = &substream->dma_buffer;
 size_t orig_size = size;
 int err;

 do {
  if ((err = snd_dma_alloc_pages(dmab->dev.type, dmab->dev.dev,
            size, dmab)) < 0) {
   if (err != -ENOMEM)
    return err;
  } else
   return 0;
  size >>= 1;
 } while (size >= snd_minimum_buffer);
 dmab->bytes = 0;
 pr_warn("ALSA pcmC%dD%d%c,%d:%s: cannot preallocate for size %zu\n",
  substream->pcm->card->number, substream->pcm->device,
  substream->stream ? 'c' : 'p', substream->number,
  substream->pcm->name, orig_size);
 return 0;
}
