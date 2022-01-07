
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* pcm; TYPE_3__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct m3_dma {int buffer_addr; } ;
struct TYPE_6__ {int dma_addr; struct m3_dma* private_data; } ;
struct TYPE_5__ {TYPE_1__* card; } ;
struct TYPE_4__ {int dev; } ;


 int dev_err (int ,char*) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int snd_m3_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *hw_params)
{
 struct m3_dma *s = substream->runtime->private_data;
 int err;

 if ((err = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params))) < 0)
  return err;

 s->buffer_addr = substream->runtime->dma_addr;
 if (s->buffer_addr & 0x3) {
  dev_err(substream->pcm->card->dev, "oh my, not aligned\n");
  s->buffer_addr = s->buffer_addr & ~0x3;
 }
 return 0;
}
