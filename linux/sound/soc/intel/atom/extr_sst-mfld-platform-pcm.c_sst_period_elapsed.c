
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_runtime_stream {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct sst_runtime_stream* private_data; } ;


 int SST_PLATFORM_RUNNING ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int sst_get_stream_status (struct sst_runtime_stream*) ;

__attribute__((used)) static void sst_period_elapsed(void *arg)
{
 struct snd_pcm_substream *substream = arg;
 struct sst_runtime_stream *stream;
 int status;

 if (!substream || !substream->runtime)
  return;
 stream = substream->runtime->private_data;
 if (!stream)
  return;
 status = sst_get_stream_status(stream);
 if (status != SST_PLATFORM_RUNNING)
  return;
 snd_pcm_period_elapsed(substream);
}
