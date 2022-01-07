
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_stream {int index; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 struct hdac_bus* dev_get_drvdata (struct device*) ;
 int snd_hdac_ext_stream_set_spib (struct hdac_bus*,struct hdac_ext_stream*,unsigned int) ;
 int snd_hdac_ext_stream_spbcap_enable (struct hdac_bus*,int,int ) ;
 struct hdac_stream* snd_hdac_get_stream (struct hdac_bus*,int ,int) ;
 struct hdac_ext_stream* stream_to_hdac_ext_stream (struct hdac_stream*) ;

__attribute__((used)) static int skl_dsp_setup_spib(struct device *dev, unsigned int size,
    int stream_tag, int enable)
{
 struct hdac_bus *bus = dev_get_drvdata(dev);
 struct hdac_stream *stream = snd_hdac_get_stream(bus,
   SNDRV_PCM_STREAM_PLAYBACK, stream_tag);
 struct hdac_ext_stream *estream;

 if (!stream)
  return -EINVAL;

 estream = stream_to_hdac_ext_stream(stream);

 snd_hdac_ext_stream_spbcap_enable(bus, enable, stream->index);


 snd_hdac_ext_stream_set_spib(bus, estream, size);

 return 0;
}
