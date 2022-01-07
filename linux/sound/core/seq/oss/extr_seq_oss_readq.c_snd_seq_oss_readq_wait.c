
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_readq {scalar_t__ qlen; scalar_t__ head; scalar_t__ tail; int pre_event_timeout; int midi_sleep; } ;


 int wait_event_interruptible_timeout (int ,int,int ) ;

void
snd_seq_oss_readq_wait(struct seq_oss_readq *q)
{
 wait_event_interruptible_timeout(q->midi_sleep,
      (q->qlen > 0 || q->head == q->tail),
      q->pre_event_timeout);
}
