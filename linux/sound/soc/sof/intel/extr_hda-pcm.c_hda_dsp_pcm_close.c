
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dev; } ;
struct snd_pcm_substream {int stream; TYPE_1__* runtime; int name; } ;
struct hdac_stream {int stream_tag; } ;
struct TYPE_2__ {struct hdac_stream* private_data; } ;


 int ENODEV ;
 int dev_dbg (int ,char*,int ) ;
 int hda_dsp_stream_put (struct snd_sof_dev*,int,int ) ;

int hda_dsp_pcm_close(struct snd_sof_dev *sdev,
        struct snd_pcm_substream *substream)
{
 struct hdac_stream *hstream = substream->runtime->private_data;
 int direction = substream->stream;
 int ret;

 ret = hda_dsp_stream_put(sdev, direction, hstream->stream_tag);

 if (ret) {
  dev_dbg(sdev->dev, "stream %s not opened!\n", substream->name);
  return -ENODEV;
 }


 substream->runtime->private_data = ((void*)0);
 return 0;
}
