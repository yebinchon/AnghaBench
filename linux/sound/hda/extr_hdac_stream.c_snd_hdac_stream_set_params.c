
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ no_period_wakeup; } ;
struct hdac_stream {unsigned int bufsize; unsigned int period_bytes; unsigned int format_val; scalar_t__ no_period_wakeup; struct snd_pcm_substream* substream; } ;


 int EINVAL ;
 int snd_hdac_stream_setup_periods (struct hdac_stream*) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;

int snd_hdac_stream_set_params(struct hdac_stream *azx_dev,
     unsigned int format_val)
{

 unsigned int bufsize, period_bytes;
 struct snd_pcm_substream *substream = azx_dev->substream;
 struct snd_pcm_runtime *runtime;
 int err;

 if (!substream)
  return -EINVAL;
 runtime = substream->runtime;
 bufsize = snd_pcm_lib_buffer_bytes(substream);
 period_bytes = snd_pcm_lib_period_bytes(substream);

 if (bufsize != azx_dev->bufsize ||
     period_bytes != azx_dev->period_bytes ||
     format_val != azx_dev->format_val ||
     runtime->no_period_wakeup != azx_dev->no_period_wakeup) {
  azx_dev->bufsize = bufsize;
  azx_dev->period_bytes = period_bytes;
  azx_dev->format_val = format_val;
  azx_dev->no_period_wakeup = runtime->no_period_wakeup;
  err = snd_hdac_stream_setup_periods(azx_dev);
  if (err < 0)
   return err;
 }
 return 0;
}
