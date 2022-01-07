
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_seq_queue {int dummy; } ;
struct TYPE_6__ {int client; } ;
struct TYPE_4__ {int queue; } ;
struct TYPE_5__ {TYPE_1__ queue; } ;
struct snd_seq_event {TYPE_3__ source; TYPE_2__ data; } ;


 int EINVAL ;
 int EPERM ;
 int queue_access_lock (struct snd_seq_queue*,int ) ;
 int queue_access_unlock (struct snd_seq_queue*) ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_queue_process_event (struct snd_seq_queue*,struct snd_seq_event*,int,int) ;

int snd_seq_control_queue(struct snd_seq_event *ev, int atomic, int hop)
{
 struct snd_seq_queue *q;

 if (snd_BUG_ON(!ev))
  return -EINVAL;
 q = queueptr(ev->data.queue.queue);

 if (q == ((void*)0))
  return -EINVAL;

 if (! queue_access_lock(q, ev->source.client)) {
  queuefree(q);
  return -EPERM;
 }

 snd_seq_queue_process_event(q, ev, atomic, hop);

 queue_access_unlock(q);
 queuefree(q);
 return 0;
}
