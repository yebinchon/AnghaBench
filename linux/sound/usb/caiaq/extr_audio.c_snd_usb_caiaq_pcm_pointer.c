
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_caiaqdev {int spinlock; int * audio_in_buf_pos; int * audio_out_buf_pos; scalar_t__ output_panic; scalar_t__ input_panic; } ;
struct snd_pcm_substream {int number; scalar_t__ stream; int runtime; } ;
typedef int snd_pcm_uframes_t ;


 int SNDRV_PCM_POS_XRUN ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int bytes_to_frames (int ,int ) ;
 struct snd_usb_caiaqdev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_usb_caiaq_pcm_pointer(struct snd_pcm_substream *sub)
{
 int index = sub->number;
 struct snd_usb_caiaqdev *cdev = snd_pcm_substream_chip(sub);
 snd_pcm_uframes_t ptr;

 spin_lock(&cdev->spinlock);

 if (cdev->input_panic || cdev->output_panic) {
  ptr = SNDRV_PCM_POS_XRUN;
  goto unlock;
 }

 if (sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
  ptr = bytes_to_frames(sub->runtime,
     cdev->audio_out_buf_pos[index]);
 else
  ptr = bytes_to_frames(sub->runtime,
     cdev->audio_in_buf_pos[index]);

unlock:
 spin_unlock(&cdev->spinlock);
 return ptr;
}
