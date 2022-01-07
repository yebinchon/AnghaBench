
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int timer; int timeq; int tickq; int use_lock; int timer_mutex; } ;


 int kfree (struct snd_seq_queue*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_seq_prioq_delete (int *) ;
 int snd_seq_timer_close (struct snd_seq_queue*) ;
 int snd_seq_timer_delete (int *) ;
 int snd_seq_timer_stop (int ) ;
 int snd_use_lock_sync (int *) ;

__attribute__((used)) static void queue_delete(struct snd_seq_queue *q)
{

 mutex_lock(&q->timer_mutex);
 snd_seq_timer_stop(q->timer);
 snd_seq_timer_close(q);
 mutex_unlock(&q->timer_mutex);

 snd_use_lock_sync(&q->use_lock);

 snd_seq_prioq_delete(&q->tickq);
 snd_seq_prioq_delete(&q->timeq);
 snd_seq_timer_delete(&q->timer);

 kfree(q);
}
