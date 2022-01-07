
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_timer {scalar_t__ type; int preferred_resolution; int alsa_id; } ;
struct TYPE_3__ {int resolution; int id; } ;
struct TYPE_4__ {TYPE_1__ alsa; } ;
struct snd_seq_queue_timer {scalar_t__ type; int queue; TYPE_2__ u; } ;
struct snd_seq_queue {int timer_mutex; struct snd_seq_timer* timer; } ;
struct snd_seq_client {int number; } ;


 int EINVAL ;
 int ENXIO ;
 int EPERM ;
 scalar_t__ SNDRV_SEQ_TIMER_ALSA ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int ) ;
 scalar_t__ snd_seq_queue_check_access (int ,int ) ;
 int snd_seq_queue_timer_close (int ) ;
 int snd_seq_queue_timer_open (int ) ;

__attribute__((used)) static int snd_seq_ioctl_set_queue_timer(struct snd_seq_client *client,
      void *arg)
{
 struct snd_seq_queue_timer *timer = arg;
 int result = 0;

 if (timer->type != SNDRV_SEQ_TIMER_ALSA)
  return -EINVAL;

 if (snd_seq_queue_check_access(timer->queue, client->number)) {
  struct snd_seq_queue *q;
  struct snd_seq_timer *tmr;

  q = queueptr(timer->queue);
  if (q == ((void*)0))
   return -ENXIO;
  mutex_lock(&q->timer_mutex);
  tmr = q->timer;
  snd_seq_queue_timer_close(timer->queue);
  tmr->type = timer->type;
  if (tmr->type == SNDRV_SEQ_TIMER_ALSA) {
   tmr->alsa_id = timer->u.alsa.id;
   tmr->preferred_resolution = timer->u.alsa.resolution;
  }
  result = snd_seq_queue_timer_open(timer->queue);
  mutex_unlock(&q->timer_mutex);
  queuefree(q);
 } else {
  return -EPERM;
 }

 return result;
}
