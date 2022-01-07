
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union evrec {int dummy; } evrec ;
struct seq_oss_readq {int maxlen; unsigned long input_time; int pre_event_timeout; int lock; int midi_sleep; scalar_t__ tail; scalar_t__ head; scalar_t__ qlen; int q; } ;
struct seq_oss_devinfo {int dummy; } ;


 int GFP_KERNEL ;
 int SNDRV_SEQ_OSS_MAX_TIMEOUT ;
 int init_waitqueue_head (int *) ;
 int kcalloc (int,int,int ) ;
 int kfree (struct seq_oss_readq*) ;
 struct seq_oss_readq* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct seq_oss_readq *
snd_seq_oss_readq_new(struct seq_oss_devinfo *dp, int maxlen)
{
 struct seq_oss_readq *q;

 q = kzalloc(sizeof(*q), GFP_KERNEL);
 if (!q)
  return ((void*)0);

 q->q = kcalloc(maxlen, sizeof(union evrec), GFP_KERNEL);
 if (!q->q) {
  kfree(q);
  return ((void*)0);
 }

 q->maxlen = maxlen;
 q->qlen = 0;
 q->head = q->tail = 0;
 init_waitqueue_head(&q->midi_sleep);
 spin_lock_init(&q->lock);
 q->pre_event_timeout = SNDRV_SEQ_OSS_MAX_TIMEOUT;
 q->input_time = (unsigned long)-1;

 return q;
}
