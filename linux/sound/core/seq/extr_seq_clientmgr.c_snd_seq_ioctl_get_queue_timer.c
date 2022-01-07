
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_timer {scalar_t__ type; int preferred_resolution; int alsa_id; } ;
struct TYPE_3__ {int resolution; int id; } ;
struct TYPE_4__ {TYPE_1__ alsa; } ;
struct snd_seq_queue_timer {scalar_t__ type; TYPE_2__ u; int queue; } ;
struct snd_seq_queue {int timer_mutex; int queue; struct snd_seq_timer* timer; } ;
struct snd_seq_client {int dummy; } ;


 int EINVAL ;
 scalar_t__ SNDRV_SEQ_TIMER_ALSA ;
 int memset (struct snd_seq_queue_timer*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int ) ;

__attribute__((used)) static int snd_seq_ioctl_get_queue_timer(struct snd_seq_client *client,
      void *arg)
{
 struct snd_seq_queue_timer *timer = arg;
 struct snd_seq_queue *queue;
 struct snd_seq_timer *tmr;

 queue = queueptr(timer->queue);
 if (queue == ((void*)0))
  return -EINVAL;

 mutex_lock(&queue->timer_mutex);
 tmr = queue->timer;
 memset(timer, 0, sizeof(*timer));
 timer->queue = queue->queue;

 timer->type = tmr->type;
 if (tmr->type == SNDRV_SEQ_TIMER_ALSA) {
  timer->u.alsa.id = tmr->alsa_id;
  timer->u.alsa.resolution = tmr->preferred_resolution;
 }
 mutex_unlock(&queue->timer_mutex);
 queuefree(queue);

 return 0;
}
