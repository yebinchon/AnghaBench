
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dev; } ;
struct snd_pcm_substream {int stream; TYPE_1__* runtime; } ;
struct hdac_ext_stream {int hstream; } ;
struct TYPE_2__ {int * private_data; } ;


 int ENODEV ;
 int dev_err (int ,char*) ;
 struct hdac_ext_stream* hda_dsp_stream_get (struct snd_sof_dev*,int) ;

int hda_dsp_pcm_open(struct snd_sof_dev *sdev,
       struct snd_pcm_substream *substream)
{
 struct hdac_ext_stream *dsp_stream;
 int direction = substream->stream;

 dsp_stream = hda_dsp_stream_get(sdev, direction);

 if (!dsp_stream) {
  dev_err(sdev->dev, "error: no stream available\n");
  return -ENODEV;
 }


 substream->runtime->private_data = &dsp_stream->hstream;
 return 0;
}
