
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_line6_pcm {scalar_t__ prev_fsize; int * prev_fbuf; } ;
struct line6_pcm_stream {int lock; int running; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int clear_bit (int,int *) ;
 struct line6_pcm_stream* get_stream (struct snd_line6_pcm*,int) ;
 int line6_unlink_audio_urbs (struct snd_line6_pcm*,struct line6_pcm_stream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void line6_stream_stop(struct snd_line6_pcm *line6pcm, int direction,
     int type)
{
 unsigned long flags;
 struct line6_pcm_stream *pstr = get_stream(line6pcm, direction);

 spin_lock_irqsave(&pstr->lock, flags);
 clear_bit(type, &pstr->running);
 if (!pstr->running) {
  spin_unlock_irqrestore(&pstr->lock, flags);
  line6_unlink_audio_urbs(line6pcm, pstr);
  spin_lock_irqsave(&pstr->lock, flags);
  if (direction == SNDRV_PCM_STREAM_CAPTURE) {
   line6pcm->prev_fbuf = ((void*)0);
   line6pcm->prev_fsize = 0;
  }
 }
 spin_unlock_irqrestore(&pstr->lock, flags);
}
