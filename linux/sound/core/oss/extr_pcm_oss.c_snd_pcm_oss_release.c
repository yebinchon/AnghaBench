
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm* pcm; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;
struct snd_pcm {TYPE_1__* card; int open_wait; int open_mutex; } ;
struct inode {int dummy; } ;
struct file {struct snd_pcm_oss_file* private_data; } ;
struct TYPE_2__ {int module; int shutdown; } ;


 int ENXIO ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_card_file_remove (TYPE_1__*,struct file*) ;
 int snd_pcm_oss_release_file (struct snd_pcm_oss_file*) ;
 int snd_pcm_oss_sync (struct snd_pcm_oss_file*) ;
 int wake_up (int *) ;

__attribute__((used)) static int snd_pcm_oss_release(struct inode *inode, struct file *file)
{
 struct snd_pcm *pcm;
 struct snd_pcm_substream *substream;
 struct snd_pcm_oss_file *pcm_oss_file;

 pcm_oss_file = file->private_data;
 substream = pcm_oss_file->streams[SNDRV_PCM_STREAM_PLAYBACK];
 if (substream == ((void*)0))
  substream = pcm_oss_file->streams[SNDRV_PCM_STREAM_CAPTURE];
 if (snd_BUG_ON(!substream))
  return -ENXIO;
 pcm = substream->pcm;
 if (!pcm->card->shutdown)
  snd_pcm_oss_sync(pcm_oss_file);
 mutex_lock(&pcm->open_mutex);
 snd_pcm_oss_release_file(pcm_oss_file);
 mutex_unlock(&pcm->open_mutex);
 wake_up(&pcm->open_wait);
 module_put(pcm->card->module);
 snd_card_file_remove(pcm->card, file);
 return 0;
}
