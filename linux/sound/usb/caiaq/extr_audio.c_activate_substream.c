
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_caiaqdev {int spinlock; struct snd_pcm_substream** sub_capture; struct snd_pcm_substream** sub_playback; } ;
struct snd_pcm_substream {scalar_t__ stream; size_t number; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
activate_substream(struct snd_usb_caiaqdev *cdev,
            struct snd_pcm_substream *sub)
{
 spin_lock(&cdev->spinlock);

 if (sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
  cdev->sub_playback[sub->number] = sub;
 else
  cdev->sub_capture[sub->number] = sub;

 spin_unlock(&cdev->spinlock);
}
