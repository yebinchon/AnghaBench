
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union evrec {int dummy; } evrec ;
struct seq_oss_readq {int qlen; int maxlen; size_t tail; int lock; int midi_sleep; int * q; } ;


 int ENOMEM ;
 int memcpy (int *,union evrec*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

int
snd_seq_oss_readq_put_event(struct seq_oss_readq *q, union evrec *ev)
{
 unsigned long flags;

 spin_lock_irqsave(&q->lock, flags);
 if (q->qlen >= q->maxlen - 1) {
  spin_unlock_irqrestore(&q->lock, flags);
  return -ENOMEM;
 }

 memcpy(&q->q[q->tail], ev, sizeof(*ev));
 q->tail = (q->tail + 1) % q->maxlen;
 q->qlen++;


 wake_up(&q->midi_sleep);

 spin_unlock_irqrestore(&q->lock, flags);

 return 0;
}
