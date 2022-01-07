
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ time; int code; } ;
union evrec {TYPE_3__ t; } ;
struct TYPE_4__ {scalar_t__ tick; } ;
struct snd_seq_event {int data; TYPE_1__ time; int type; scalar_t__ flags; } ;
struct seq_oss_writeq {scalar_t__ sync_time; int sync_event_put; int sync_sleep; struct seq_oss_devinfo* dp; } ;
struct TYPE_5__ {int port; int client; } ;
struct seq_oss_devinfo {int cseq; TYPE_2__ addr; int timer; } ;
typedef int ev ;
typedef scalar_t__ abstime_t ;


 int HZ ;
 int SEQ_SYNCTIMER ;
 int SNDRV_SEQ_EVENT_ECHO ;
 int current ;
 int memset (struct snd_seq_event*,int ,int) ;
 scalar_t__ signal_pending (int ) ;
 int snd_seq_kernel_client_enqueue (int ,struct snd_seq_event*,int *,int) ;
 int snd_seq_oss_fill_addr (struct seq_oss_devinfo*,struct snd_seq_event*,int ,int ) ;
 scalar_t__ snd_seq_oss_timer_cur_tick (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int
snd_seq_oss_writeq_sync(struct seq_oss_writeq *q)
{
 struct seq_oss_devinfo *dp = q->dp;
 abstime_t time;

 time = snd_seq_oss_timer_cur_tick(dp->timer);
 if (q->sync_time >= time)
  return 0;

 if (! q->sync_event_put) {
  struct snd_seq_event ev;
  union evrec *rec;


  memset(&ev, 0, sizeof(ev));
  ev.flags = 0;
  ev.type = SNDRV_SEQ_EVENT_ECHO;
  ev.time.tick = time;

  snd_seq_oss_fill_addr(dp, &ev, dp->addr.client, dp->addr.port);
  rec = (union evrec *)&ev.data;
  rec->t.code = SEQ_SYNCTIMER;
  rec->t.time = time;
  q->sync_event_put = 1;
  snd_seq_kernel_client_enqueue(dp->cseq, &ev, ((void*)0), 1);
 }

 wait_event_interruptible_timeout(q->sync_sleep, ! q->sync_event_put, HZ);
 if (signal_pending(current))

  q->sync_event_put = 0;
 if (! q->sync_event_put || q->sync_time >= time)
  return 0;
 return 1;
}
