
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct intel_stream {int dummy; } ;
struct TYPE_2__ {struct intel_stream* private_data; } ;


 int kfree (struct intel_stream*) ;

int intel_pcm_close(struct snd_sof_dev *sdev,
      struct snd_pcm_substream *substream)
{
 struct intel_stream *stream = substream->runtime->private_data;

 substream->runtime->private_data = ((void*)0);
 kfree(stream);

 return 0;
}
