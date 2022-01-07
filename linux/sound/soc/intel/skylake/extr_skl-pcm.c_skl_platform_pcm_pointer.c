
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; int runtime; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {scalar_t__ remap_addr; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_3__ {int index; unsigned int bufsize; } ;


 scalar_t__ AZX_REG_VS_SDXDPIB_XBASE ;
 int AZX_REG_VS_SDXDPIB_XINTERVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int bytes_to_frames (int ,unsigned int) ;
 struct hdac_bus* get_bus_ctx (struct snd_pcm_substream*) ;
 struct hdac_ext_stream* get_hdac_ext_stream (struct snd_pcm_substream*) ;
 TYPE_1__* hdac_stream (struct hdac_ext_stream*) ;
 unsigned int readl (scalar_t__) ;
 unsigned int snd_hdac_stream_get_pos_posbuf (TYPE_1__*) ;
 int udelay (int) ;

__attribute__((used)) static snd_pcm_uframes_t skl_platform_pcm_pointer
   (struct snd_pcm_substream *substream)
{
 struct hdac_ext_stream *hstream = get_hdac_ext_stream(substream);
 struct hdac_bus *bus = get_bus_ctx(substream);
 unsigned int pos;
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  pos = readl(bus->remap_addr + AZX_REG_VS_SDXDPIB_XBASE +
    (AZX_REG_VS_SDXDPIB_XINTERVAL *
    hdac_stream(hstream)->index));
 } else {
  udelay(20);
  readl(bus->remap_addr +
    AZX_REG_VS_SDXDPIB_XBASE +
    (AZX_REG_VS_SDXDPIB_XINTERVAL *
     hdac_stream(hstream)->index));
  pos = snd_hdac_stream_get_pos_posbuf(hdac_stream(hstream));
 }

 if (pos >= hdac_stream(hstream)->bufsize)
  pos = 0;

 return bytes_to_frames(substream->runtime, pos);
}
