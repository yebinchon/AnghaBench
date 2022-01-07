
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_3__* runtime; } ;
struct snd_pcm_indirect {int hw_data; scalar_t__ sw_data; } ;
struct TYPE_4__ {unsigned char* buffer; } ;
struct snd_hal2 {TYPE_2__* card; TYPE_1__ adc; } ;
struct TYPE_6__ {scalar_t__ dma_area; } ;
struct TYPE_5__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_cache_sync (int ,unsigned char*,size_t,int ) ;
 int memcpy (scalar_t__,unsigned char*,size_t) ;
 struct snd_hal2* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static void hal2_capture_transfer(struct snd_pcm_substream *substream,
      struct snd_pcm_indirect *rec, size_t bytes)
{
 struct snd_hal2 *hal2 = snd_pcm_substream_chip(substream);
 unsigned char *buf = hal2->adc.buffer + rec->hw_data;

 dma_cache_sync(hal2->card->dev, buf, bytes, DMA_FROM_DEVICE);
 memcpy(substream->runtime->dma_area + rec->sw_data, buf, bytes);
}
