
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long area; unsigned long addr; } ;
struct snd_rme9652 {unsigned long capture_buffer; unsigned long playback_buffer; TYPE_2__ playback_dma_buf; TYPE_2__ capture_dma_buf; int card_name; TYPE_1__* card; int pci; } ;
struct TYPE_4__ {int dev; } ;


 unsigned long ALIGN (unsigned long,int) ;
 int ENOMEM ;
 int RME9652_DMA_AREA_BYTES ;
 int RME9652_play_buffer ;
 int RME9652_rec_buffer ;
 int dev_err (int ,char*,int ) ;
 int rme9652_write (struct snd_rme9652*,int ,unsigned long) ;
 int snd_dma_free_pages (TYPE_2__*) ;
 scalar_t__ snd_hammerfall_get_buffer (int ,TYPE_2__*,int ) ;

__attribute__((used)) static int snd_rme9652_initialize_memory(struct snd_rme9652 *rme9652)
{
 unsigned long pb_bus, cb_bus;

 if (snd_hammerfall_get_buffer(rme9652->pci, &rme9652->capture_dma_buf, RME9652_DMA_AREA_BYTES) < 0 ||
     snd_hammerfall_get_buffer(rme9652->pci, &rme9652->playback_dma_buf, RME9652_DMA_AREA_BYTES) < 0) {
  if (rme9652->capture_dma_buf.area)
   snd_dma_free_pages(&rme9652->capture_dma_buf);
  dev_err(rme9652->card->dev,
   "%s: no buffers available\n", rme9652->card_name);
  return -ENOMEM;
 }



 cb_bus = ALIGN(rme9652->capture_dma_buf.addr, 0x10000ul);
 pb_bus = ALIGN(rme9652->playback_dma_buf.addr, 0x10000ul);



 rme9652_write(rme9652, RME9652_rec_buffer, cb_bus);
 rme9652_write(rme9652, RME9652_play_buffer, pb_bus);

 rme9652->capture_buffer = rme9652->capture_dma_buf.area + (cb_bus - rme9652->capture_dma_buf.addr);
 rme9652->playback_buffer = rme9652->playback_dma_buf.area + (pb_bus - rme9652->playback_dma_buf.addr);

 return 0;
}
