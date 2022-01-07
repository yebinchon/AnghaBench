
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct codec_setup_io TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u32 ;
struct snd_azf3328_codec_data {int lock; int running; } ;
struct snd_azf3328 {TYPE_1__* card; } ;
struct codec_setup_io {unsigned long dma_start_1; unsigned long dma_start_2; unsigned long dma_lengths; } ;
struct TYPE_3__ {int dev; } ;


 int IDX_IO_CODEC_DMA_START_1 ;
 int WARN_ONCE (int,char*,...) ;
 int dev_dbg (int ,char*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned int,unsigned int) ;
 int snd_azf3328_codec_outl_multi (struct snd_azf3328_codec_data*,int ,TYPE_2__*,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void
snd_azf3328_codec_setdmaa(struct snd_azf3328 *chip,
     struct snd_azf3328_codec_data *codec,
     unsigned long addr,
     unsigned int period_bytes,
     unsigned int buffer_bytes
)
{
 WARN_ONCE(period_bytes & 1, "odd period length!?\n");
 WARN_ONCE(buffer_bytes != 2 * period_bytes,
   "missed our input expectations! %u vs. %u\n",
   buffer_bytes, period_bytes);
 if (!codec->running) {


  unsigned long flags;


  u32 area_length;
  struct codec_setup_io {
   u32 dma_start_1;
   u32 dma_start_2;
   u32 dma_lengths;
  } __attribute__((packed)) setup_io;

  area_length = buffer_bytes/2;

  setup_io.dma_start_1 = addr;
  setup_io.dma_start_2 = addr+area_length;

  dev_dbg(chip->card->dev,
   "setdma: buffers %08x[%u] / %08x[%u], %u, %u\n",
    setup_io.dma_start_1, area_length,
    setup_io.dma_start_2, area_length,
    period_bytes, buffer_bytes);
  setup_io.dma_lengths = (area_length << 16) | (area_length);

  spin_lock_irqsave(codec->lock, flags);
  snd_azf3328_codec_outl_multi(
   codec, IDX_IO_CODEC_DMA_START_1, &setup_io, 3
  );
  spin_unlock_irqrestore(codec->lock, flags);
 }
}
