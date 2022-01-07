
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_caiaqdev {int spinlock; int ** sub_capture; int ** sub_playback; } ;
struct snd_pcm_substream {scalar_t__ stream; size_t number; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
deactivate_substream(struct snd_usb_caiaqdev *cdev,
       struct snd_pcm_substream *sub)
{
 unsigned long flags;
 spin_lock_irqsave(&cdev->spinlock, flags);

 if (sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
  cdev->sub_playback[sub->number] = ((void*)0);
 else
  cdev->sub_capture[sub->number] = ((void*)0);

 spin_unlock_irqrestore(&cdev->spinlock, flags);
}
