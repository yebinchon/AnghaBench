
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue_tempo {scalar_t__ skew_base; int skew_value; int ppq; int tempo; } ;
struct snd_seq_queue {int timer; } ;


 int EINVAL ;
 int EPERM ;
 int queue_access_lock (struct snd_seq_queue*,int) ;
 int queue_access_unlock (struct snd_seq_queue*) ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 int snd_seq_timer_set_skew (int ,int ,scalar_t__) ;
 int snd_seq_timer_set_tempo_ppq (int ,int ,int ) ;

int snd_seq_queue_timer_set_tempo(int queueid, int client,
      struct snd_seq_queue_tempo *info)
{
 struct snd_seq_queue *q = queueptr(queueid);
 int result;

 if (q == ((void*)0))
  return -EINVAL;
 if (! queue_access_lock(q, client)) {
  queuefree(q);
  return -EPERM;
 }

 result = snd_seq_timer_set_tempo_ppq(q->timer, info->tempo, info->ppq);
 if (result >= 0 && info->skew_base > 0)
  result = snd_seq_timer_set_skew(q->timer, info->skew_value,
      info->skew_base);
 queue_access_unlock(q);
 queuefree(q);
 return result;
}
