
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;
struct TYPE_2__ {scalar_t__ area; } ;
struct hdac_stream {int period_bytes; int bufsize; int no_period_wakeup; scalar_t__ frags; TYPE_1__ bdl; struct snd_pcm_substream* substream; struct hdac_bus* bus; } ;
struct hdac_bus {int bdl_pos_adj; int dev; } ;
typedef int __le32 ;


 int EINVAL ;
 int SD_BDLPL ;
 int SD_BDLPU ;
 int dev_err (int ,char*,int,int) ;
 int dev_warn (int ,char*,int) ;
 int frames_to_bytes (struct snd_pcm_runtime*,int) ;
 int setup_bdle (struct hdac_bus*,int ,struct hdac_stream*,int **,int,int,int) ;
 int snd_hdac_stream_writel (struct hdac_stream*,int ,int ) ;
 int snd_pcm_get_dma_buf (struct snd_pcm_substream*) ;

int snd_hdac_stream_setup_periods(struct hdac_stream *azx_dev)
{
 struct hdac_bus *bus = azx_dev->bus;
 struct snd_pcm_substream *substream = azx_dev->substream;
 struct snd_pcm_runtime *runtime = substream->runtime;
 __le32 *bdl;
 int i, ofs, periods, period_bytes;
 int pos_adj, pos_align;


 snd_hdac_stream_writel(azx_dev, SD_BDLPL, 0);
 snd_hdac_stream_writel(azx_dev, SD_BDLPU, 0);

 period_bytes = azx_dev->period_bytes;
 periods = azx_dev->bufsize / period_bytes;


 bdl = (__le32 *)azx_dev->bdl.area;
 ofs = 0;
 azx_dev->frags = 0;

 pos_adj = bus->bdl_pos_adj;
 if (!azx_dev->no_period_wakeup && pos_adj > 0) {
  pos_align = pos_adj;
  pos_adj = (pos_adj * runtime->rate + 47999) / 48000;
  if (!pos_adj)
   pos_adj = pos_align;
  else
   pos_adj = ((pos_adj + pos_align - 1) / pos_align) *
    pos_align;
  pos_adj = frames_to_bytes(runtime, pos_adj);
  if (pos_adj >= period_bytes) {
   dev_warn(bus->dev, "Too big adjustment %d\n",
     pos_adj);
   pos_adj = 0;
  } else {
   ofs = setup_bdle(bus, snd_pcm_get_dma_buf(substream),
      azx_dev,
      &bdl, ofs, pos_adj, 1);
   if (ofs < 0)
    goto error;
  }
 } else
  pos_adj = 0;

 for (i = 0; i < periods; i++) {
  if (i == periods - 1 && pos_adj)
   ofs = setup_bdle(bus, snd_pcm_get_dma_buf(substream),
      azx_dev, &bdl, ofs,
      period_bytes - pos_adj, 0);
  else
   ofs = setup_bdle(bus, snd_pcm_get_dma_buf(substream),
      azx_dev, &bdl, ofs,
      period_bytes,
      !azx_dev->no_period_wakeup);
  if (ofs < 0)
   goto error;
 }
 return 0;

 error:
 dev_err(bus->dev, "Too many BDL entries: buffer=%d, period=%d\n",
  azx_dev->bufsize, period_bytes);
 return -EINVAL;
}
