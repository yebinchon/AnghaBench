
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dma_buffer {int dummy; } ;
struct hdac_stream {int dummy; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int HDAC_EXT_STREAM_TYPE_HOST ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 struct hdac_bus* dev_get_drvdata (struct device*) ;
 int skl_dsp_setup_spib (struct device*,int ,int,int) ;
 int snd_hdac_dsp_cleanup (struct hdac_stream*,struct snd_dma_buffer*) ;
 int snd_hdac_ext_stream_release (struct hdac_ext_stream*,int ) ;
 struct hdac_stream* snd_hdac_get_stream (struct hdac_bus*,int ,int) ;
 struct hdac_ext_stream* stream_to_hdac_ext_stream (struct hdac_stream*) ;

__attribute__((used)) static int skl_dsp_cleanup(struct device *dev,
  struct snd_dma_buffer *dmab, int stream_tag)
{
 struct hdac_bus *bus = dev_get_drvdata(dev);
 struct hdac_stream *stream;
 struct hdac_ext_stream *estream;

 if (!bus)
  return -ENODEV;

 stream = snd_hdac_get_stream(bus,
  SNDRV_PCM_STREAM_PLAYBACK, stream_tag);
 if (!stream)
  return -EINVAL;

 estream = stream_to_hdac_ext_stream(stream);
 skl_dsp_setup_spib(dev, 0, stream_tag, 0);
 snd_hdac_ext_stream_release(estream, HDAC_EXT_STREAM_TYPE_HOST);

 snd_hdac_dsp_cleanup(stream, dmab);

 return 0;
}
