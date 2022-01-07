
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int queue; int owner; int locked; scalar_t__ klocked; int * timer; int * timeq; int * tickq; int use_lock; int timer_mutex; int check_lock; int owner_lock; } ;


 int GFP_KERNEL ;
 int kfree (struct snd_seq_queue*) ;
 struct snd_seq_queue* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int snd_seq_prioq_delete (int **) ;
 void* snd_seq_prioq_new () ;
 int snd_seq_timer_delete (int **) ;
 int * snd_seq_timer_new () ;
 int snd_use_lock_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct snd_seq_queue *queue_new(int owner, int locked)
{
 struct snd_seq_queue *q;

 q = kzalloc(sizeof(*q), GFP_KERNEL);
 if (!q)
  return ((void*)0);

 spin_lock_init(&q->owner_lock);
 spin_lock_init(&q->check_lock);
 mutex_init(&q->timer_mutex);
 snd_use_lock_init(&q->use_lock);
 q->queue = -1;

 q->tickq = snd_seq_prioq_new();
 q->timeq = snd_seq_prioq_new();
 q->timer = snd_seq_timer_new();
 if (q->tickq == ((void*)0) || q->timeq == ((void*)0) || q->timer == ((void*)0)) {
  snd_seq_prioq_delete(&q->tickq);
  snd_seq_prioq_delete(&q->timeq);
  snd_seq_timer_delete(&q->timer);
  kfree(q);
  return ((void*)0);
 }

 q->owner = owner;
 q->locked = locked;
 q->klocked = 0;

 return q;
}
