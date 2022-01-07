
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct snd_seq_queue {int queue; TYPE_3__* timer; } ;
struct TYPE_14__ {int client; } ;
struct TYPE_13__ {int port; int client; } ;
struct TYPE_11__ {int queue; } ;
struct TYPE_12__ {TYPE_4__ queue; } ;
struct TYPE_8__ {int tick; } ;
struct snd_seq_event {int flags; TYPE_7__ dest; TYPE_6__ source; TYPE_5__ data; int queue; TYPE_1__ time; } ;
struct TYPE_9__ {int cur_tick; } ;
struct TYPE_10__ {TYPE_2__ tick; } ;


 int SNDRV_SEQ_ADDRESS_SUBSCRIBERS ;
 int SNDRV_SEQ_CLIENT_SYSTEM ;
 int SNDRV_SEQ_PORT_SYSTEM_TIMER ;
 int SNDRV_SEQ_TIME_MODE_ABS ;
 int SNDRV_SEQ_TIME_STAMP_TICK ;
 int snd_seq_kernel_client_dispatch (int ,struct snd_seq_event*,int,int) ;

__attribute__((used)) static void queue_broadcast_event(struct snd_seq_queue *q, struct snd_seq_event *ev,
      int atomic, int hop)
{
 struct snd_seq_event sev;

 sev = *ev;

 sev.flags = SNDRV_SEQ_TIME_STAMP_TICK|SNDRV_SEQ_TIME_MODE_ABS;
 sev.time.tick = q->timer->tick.cur_tick;
 sev.queue = q->queue;
 sev.data.queue.queue = q->queue;


 sev.source.client = SNDRV_SEQ_CLIENT_SYSTEM;
 sev.source.port = SNDRV_SEQ_PORT_SYSTEM_TIMER;
 sev.dest.client = SNDRV_SEQ_ADDRESS_SUBSCRIBERS;
 snd_seq_kernel_client_dispatch(SNDRV_SEQ_CLIENT_SYSTEM, &sev, atomic, hop);
}
