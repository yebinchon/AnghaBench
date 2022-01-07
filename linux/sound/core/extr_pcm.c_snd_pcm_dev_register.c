
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct snd_pcm {TYPE_1__* streams; int list; int device; int card; } ;
struct snd_device {struct snd_pcm* device_data; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; int dev; } ;


 int ENXIO ;
 int SNDRV_DEVICE_TYPE_PCM_CAPTURE ;
 int SNDRV_DEVICE_TYPE_PCM_PLAYBACK ;


 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int n_register ;
 int pcm_call_notify (struct snd_pcm*,int ) ;
 int register_mutex ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_pcm_add (struct snd_pcm*) ;
 int * snd_pcm_f_ops ;
 int snd_pcm_timer_init (struct snd_pcm_substream*) ;
 int snd_register_device (int,int ,int ,int *,struct snd_pcm*,int *) ;

__attribute__((used)) static int snd_pcm_dev_register(struct snd_device *device)
{
 int cidx, err;
 struct snd_pcm_substream *substream;
 struct snd_pcm *pcm;

 if (snd_BUG_ON(!device || !device->device_data))
  return -ENXIO;
 pcm = device->device_data;

 mutex_lock(&register_mutex);
 err = snd_pcm_add(pcm);
 if (err)
  goto unlock;
 for (cidx = 0; cidx < 2; cidx++) {
  int devtype = -1;
  if (pcm->streams[cidx].substream == ((void*)0))
   continue;
  switch (cidx) {
  case 128:
   devtype = SNDRV_DEVICE_TYPE_PCM_PLAYBACK;
   break;
  case 129:
   devtype = SNDRV_DEVICE_TYPE_PCM_CAPTURE;
   break;
  }

  err = snd_register_device(devtype, pcm->card, pcm->device,
       &snd_pcm_f_ops[cidx], pcm,
       &pcm->streams[cidx].dev);
  if (err < 0) {
   list_del_init(&pcm->list);
   goto unlock;
  }

  for (substream = pcm->streams[cidx].substream; substream; substream = substream->next)
   snd_pcm_timer_init(substream);
 }

 pcm_call_notify(pcm, n_register);

 unlock:
 mutex_unlock(&register_mutex);
 return err;
}
