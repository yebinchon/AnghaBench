
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; struct snd_pcm_substream* next; } ;
struct snd_pcm {int open_mutex; TYPE_3__* streams; int list; int open_wait; } ;
struct snd_device {struct snd_pcm* device_data; } ;
struct TYPE_6__ {int dev; struct snd_pcm_substream* substream; } ;
struct TYPE_5__ {int tsleep; int sleep; TYPE_1__* status; } ;
struct TYPE_4__ {int state; } ;


 int SNDRV_PCM_STATE_DISCONNECTED ;
 int free_chmap (TYPE_3__*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int n_disconnect ;
 int pcm_call_notify (struct snd_pcm*,int ) ;
 int register_mutex ;
 scalar_t__ snd_pcm_running (struct snd_pcm_substream*) ;
 int snd_pcm_stop (struct snd_pcm_substream*,int ) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;
 int snd_unregister_device (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int snd_pcm_dev_disconnect(struct snd_device *device)
{
 struct snd_pcm *pcm = device->device_data;
 struct snd_pcm_substream *substream;
 int cidx;

 mutex_lock(&register_mutex);
 mutex_lock(&pcm->open_mutex);
 wake_up(&pcm->open_wait);
 list_del_init(&pcm->list);
 for (cidx = 0; cidx < 2; cidx++) {
  for (substream = pcm->streams[cidx].substream; substream; substream = substream->next) {
   snd_pcm_stream_lock_irq(substream);
   if (substream->runtime) {
    if (snd_pcm_running(substream))
     snd_pcm_stop(substream,
           SNDRV_PCM_STATE_DISCONNECTED);

    substream->runtime->status->state = SNDRV_PCM_STATE_DISCONNECTED;
    wake_up(&substream->runtime->sleep);
    wake_up(&substream->runtime->tsleep);
   }
   snd_pcm_stream_unlock_irq(substream);
  }
 }

 pcm_call_notify(pcm, n_disconnect);
 for (cidx = 0; cidx < 2; cidx++) {
  snd_unregister_device(&pcm->streams[cidx].dev);
  free_chmap(&pcm->streams[cidx]);
 }
 mutex_unlock(&pcm->open_mutex);
 mutex_unlock(&register_mutex);
 return 0;
}
