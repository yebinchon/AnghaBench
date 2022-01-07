
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_line6_pcm {int dummy; } ;
struct line6_pcm_stream {int lock; int running; scalar_t__ count; scalar_t__ unlink_urbs; scalar_t__ active_urbs; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int clear_bit (int,int *) ;
 struct line6_pcm_stream* get_stream (struct snd_line6_pcm*,int) ;
 int line6_submit_audio_in_all_urbs (struct snd_line6_pcm*) ;
 int line6_submit_audio_out_all_urbs (struct snd_line6_pcm*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static int line6_stream_start(struct snd_line6_pcm *line6pcm, int direction,
         int type)
{
 unsigned long flags;
 struct line6_pcm_stream *pstr = get_stream(line6pcm, direction);
 int ret = 0;

 spin_lock_irqsave(&pstr->lock, flags);
 if (!test_and_set_bit(type, &pstr->running) &&
     !(pstr->active_urbs || pstr->unlink_urbs)) {
  pstr->count = 0;

  if (direction == SNDRV_PCM_STREAM_PLAYBACK)
   ret = line6_submit_audio_out_all_urbs(line6pcm);
  else
   ret = line6_submit_audio_in_all_urbs(line6pcm);
 }

 if (ret < 0)
  clear_bit(type, &pstr->running);
 spin_unlock_irqrestore(&pstr->lock, flags);
 return ret;
}
