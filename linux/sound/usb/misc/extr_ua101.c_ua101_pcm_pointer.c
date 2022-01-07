
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ua101_stream {unsigned int buffer_pos; } ;
struct ua101 {int lock; } ;
typedef unsigned int snd_pcm_uframes_t ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline snd_pcm_uframes_t ua101_pcm_pointer(struct ua101 *ua,
        struct ua101_stream *stream)
{
 unsigned long flags;
 unsigned int pos;

 spin_lock_irqsave(&ua->lock, flags);
 pos = stream->buffer_pos;
 spin_unlock_irqrestore(&ua->lock, flags);
 return pos;
}
