
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct snd_pcm_runtime {int period_size; int rate; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct hdac_stream {unsigned int stream_tag; unsigned int bufsize; int period_wallclk; int delay_negative_threshold; scalar_t__ fifo_size; TYPE_2__ bdl; scalar_t__ frags; scalar_t__ format_val; TYPE_1__* substream; struct hdac_bus* bus; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct hdac_bus {TYPE_3__ posbuf; scalar_t__ use_posbuf; int snoop; } ;
struct TYPE_4__ {struct snd_pcm_runtime* runtime; } ;


 unsigned int AZX_DPLBASE_ENABLE ;
 int DPLBASE ;
 int SD_BDLPL ;
 int SD_BDLPU ;
 int SD_CBL ;
 int SD_CTL ;
 unsigned int SD_CTL_STREAM_TAG_MASK ;
 unsigned int SD_CTL_STREAM_TAG_SHIFT ;
 unsigned int SD_CTL_TRAFFIC_PRIO ;
 int SD_FIFOSIZE ;
 int SD_FORMAT ;
 int SD_INT_MASK ;
 int SD_LVI ;
 int frames_to_bytes (struct snd_pcm_runtime*,int) ;
 unsigned int snd_hdac_chip_readl (struct hdac_bus*,int ) ;
 int snd_hdac_chip_writel (struct hdac_bus*,int ,unsigned int) ;
 int snd_hdac_stream_clear (struct hdac_stream*) ;
 unsigned int snd_hdac_stream_readl (struct hdac_stream*,int ) ;
 scalar_t__ snd_hdac_stream_readw (struct hdac_stream*,int ) ;
 int snd_hdac_stream_updatel (struct hdac_stream*,int ,int ,int ) ;
 int snd_hdac_stream_writel (struct hdac_stream*,int ,unsigned int) ;
 int snd_hdac_stream_writew (struct hdac_stream*,int ,scalar_t__) ;
 unsigned int upper_32_bits (scalar_t__) ;

int snd_hdac_stream_setup(struct hdac_stream *azx_dev)
{
 struct hdac_bus *bus = azx_dev->bus;
 struct snd_pcm_runtime *runtime;
 unsigned int val;

 if (azx_dev->substream)
  runtime = azx_dev->substream->runtime;
 else
  runtime = ((void*)0);

 snd_hdac_stream_clear(azx_dev);

 val = snd_hdac_stream_readl(azx_dev, SD_CTL);
 val = (val & ~SD_CTL_STREAM_TAG_MASK) |
  (azx_dev->stream_tag << SD_CTL_STREAM_TAG_SHIFT);
 if (!bus->snoop)
  val |= SD_CTL_TRAFFIC_PRIO;
 snd_hdac_stream_writel(azx_dev, SD_CTL, val);


 snd_hdac_stream_writel(azx_dev, SD_CBL, azx_dev->bufsize);



 snd_hdac_stream_writew(azx_dev, SD_FORMAT, azx_dev->format_val);


 snd_hdac_stream_writew(azx_dev, SD_LVI, azx_dev->frags - 1);



 snd_hdac_stream_writel(azx_dev, SD_BDLPL, (u32)azx_dev->bdl.addr);

 snd_hdac_stream_writel(azx_dev, SD_BDLPU,
          upper_32_bits(azx_dev->bdl.addr));


 if (bus->use_posbuf && bus->posbuf.addr) {
  if (!(snd_hdac_chip_readl(bus, DPLBASE) & AZX_DPLBASE_ENABLE))
   snd_hdac_chip_writel(bus, DPLBASE,
    (u32)bus->posbuf.addr | AZX_DPLBASE_ENABLE);
 }


 snd_hdac_stream_updatel(azx_dev, SD_CTL, 0, SD_INT_MASK);

 azx_dev->fifo_size = snd_hdac_stream_readw(azx_dev, SD_FIFOSIZE) + 1;





 if (runtime && runtime->period_size > 64)
  azx_dev->delay_negative_threshold =
   -frames_to_bytes(runtime, 64);
 else
  azx_dev->delay_negative_threshold = 0;


 if (runtime)
  azx_dev->period_wallclk = (((runtime->period_size * 24000) /
        runtime->rate) * 1000);

 return 0;
}
