
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; struct snd_oxfw* private_data; } ;
struct snd_oxfw {int mutex; int substreams_count; } ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ SNDRV_PCM_STATE_OPEN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_oxfw_stream_stop_duplex (struct snd_oxfw*) ;
 int snd_pcm_lib_free_vmalloc_buffer (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_capture_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_oxfw *oxfw = substream->private_data;

 mutex_lock(&oxfw->mutex);

 if (substream->runtime->status->state != SNDRV_PCM_STATE_OPEN)
  --oxfw->substreams_count;

 snd_oxfw_stream_stop_duplex(oxfw);

 mutex_unlock(&oxfw->mutex);

 return snd_pcm_lib_free_vmalloc_buffer(substream);
}
