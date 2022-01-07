
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct snd_seq_queue {int timer; int timeq; int tickq; } ;
struct TYPE_9__ {int base; int value; } ;
struct TYPE_8__ {int time; int tick; } ;
struct TYPE_10__ {TYPE_3__ skew; TYPE_2__ time; int value; } ;
struct TYPE_11__ {TYPE_4__ param; } ;
struct TYPE_12__ {TYPE_5__ queue; } ;
struct TYPE_7__ {int client; } ;
struct snd_seq_event {int type; TYPE_6__ data; TYPE_1__ source; } ;
 int queue_broadcast_event (struct snd_seq_queue*,struct snd_seq_event*,int,int) ;
 int snd_seq_prioq_leave (int ,int ,int) ;
 int snd_seq_timer_continue (int ) ;
 int snd_seq_timer_set_position_tick (int ,int ) ;
 int snd_seq_timer_set_position_time (int ,int ) ;
 int snd_seq_timer_set_skew (int ,int ,int ) ;
 int snd_seq_timer_set_tempo (int ,int ) ;
 int snd_seq_timer_start (int ) ;
 int snd_seq_timer_stop (int ) ;

__attribute__((used)) static void snd_seq_queue_process_event(struct snd_seq_queue *q,
     struct snd_seq_event *ev,
     int atomic, int hop)
{
 switch (ev->type) {
 case 130:
  snd_seq_prioq_leave(q->tickq, ev->source.client, 1);
  snd_seq_prioq_leave(q->timeq, ev->source.client, 1);
  if (! snd_seq_timer_start(q->timer))
   queue_broadcast_event(q, ev, atomic, hop);
  break;

 case 134:
  if (! snd_seq_timer_continue(q->timer))
   queue_broadcast_event(q, ev, atomic, hop);
  break;

 case 129:
  snd_seq_timer_stop(q->timer);
  queue_broadcast_event(q, ev, atomic, hop);
  break;

 case 128:
  snd_seq_timer_set_tempo(q->timer, ev->data.queue.param.value);
  queue_broadcast_event(q, ev, atomic, hop);
  break;

 case 132:
  if (snd_seq_timer_set_position_tick(q->timer, ev->data.queue.param.time.tick) == 0) {
   queue_broadcast_event(q, ev, atomic, hop);
  }
  break;

 case 131:
  if (snd_seq_timer_set_position_time(q->timer, ev->data.queue.param.time.time) == 0) {
   queue_broadcast_event(q, ev, atomic, hop);
  }
  break;
 case 133:
  if (snd_seq_timer_set_skew(q->timer,
        ev->data.queue.param.skew.value,
        ev->data.queue.param.skew.base) == 0) {
   queue_broadcast_event(q, ev, atomic, hop);
  }
  break;
 }
}
