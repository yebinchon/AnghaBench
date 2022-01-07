
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int format; int channels; int rate; scalar_t__ private_data; } ;
struct echoaudio {TYPE_1__* card; } ;
struct audiopipe {int index; } ;
struct audioformat {int data_are_bigendian; int bits_per_sample; scalar_t__ mono_to_stereo; int interleave; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;





 int dev_dbg (int ,char*,int ,int,int ) ;
 int dev_err (int ,char*,int) ;
 int is_pipe_allocated (struct echoaudio*,int) ;
 int px_num (struct echoaudio*) ;
 int set_audio_format (struct echoaudio*,int,struct audioformat*) ;
 scalar_t__ snd_BUG_ON (int) ;
 struct echoaudio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_prepare(struct snd_pcm_substream *substream)
{
 struct echoaudio *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct audioformat format;
 int pipe_index = ((struct audiopipe *)runtime->private_data)->index;

 dev_dbg(chip->card->dev, "Prepare rate=%d format=%d channels=%d\n",
  runtime->rate, runtime->format, runtime->channels);
 format.interleave = runtime->channels;
 format.data_are_bigendian = 0;
 format.mono_to_stereo = 0;
 switch (runtime->format) {
 case 128:
  format.bits_per_sample = 8;
  break;
 case 132:
  format.bits_per_sample = 16;
  break;
 case 131:
  format.bits_per_sample = 24;
  break;
 case 130:
  format.data_are_bigendian = 1;

 case 129:
  format.bits_per_sample = 32;
  break;
 default:
  dev_err(chip->card->dev,
   "Prepare error: unsupported format %d\n",
   runtime->format);
  return -EINVAL;
 }

 if (snd_BUG_ON(pipe_index >= px_num(chip)))
  return -EINVAL;
 if (snd_BUG_ON(!is_pipe_allocated(chip, pipe_index)))
  return -EINVAL;
 set_audio_format(chip, pipe_index, &format);
 return 0;
}
