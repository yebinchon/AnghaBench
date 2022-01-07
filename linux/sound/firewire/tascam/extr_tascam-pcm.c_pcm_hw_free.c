
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_tscm {int mutex; int substreams_counter; } ;
struct snd_pcm_substream {TYPE_2__* runtime; struct snd_tscm* private_data; } ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ SNDRV_PCM_STATE_OPEN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_lib_free_vmalloc_buffer (struct snd_pcm_substream*) ;
 int snd_tscm_stream_stop_duplex (struct snd_tscm*) ;

__attribute__((used)) static int pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_tscm *tscm = substream->private_data;

 mutex_lock(&tscm->mutex);

 if (substream->runtime->status->state != SNDRV_PCM_STATE_OPEN)
  --tscm->substreams_counter;

 snd_tscm_stream_stop_duplex(tscm);

 mutex_unlock(&tscm->mutex);

 return snd_pcm_lib_free_vmalloc_buffer(substream);
}
