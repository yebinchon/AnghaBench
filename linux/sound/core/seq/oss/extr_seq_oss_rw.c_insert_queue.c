
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union evrec {int dummy; } evrec ;
struct TYPE_6__ {int tick; } ;
struct snd_seq_event {TYPE_2__ time; int type; } ;
struct TYPE_5__ {int port; int client; } ;
struct seq_oss_devinfo {int file_mode; int cseq; TYPE_3__* timer; TYPE_1__ addr; } ;
struct file {int dummy; } ;
typedef int event ;
struct TYPE_7__ {int running; scalar_t__ realtime; } ;


 int SNDRV_SEQ_EVENT_NOTEOFF ;
 int is_nonblock_mode (int ) ;
 int memset (struct snd_seq_event*,int ,int) ;
 int snd_seq_kernel_client_enqueue (int ,struct snd_seq_event*,struct file*,int) ;
 int snd_seq_oss_dispatch (struct seq_oss_devinfo*,struct snd_seq_event*,int ,int ) ;
 int snd_seq_oss_fill_addr (struct seq_oss_devinfo*,struct snd_seq_event*,int ,int ) ;
 scalar_t__ snd_seq_oss_process_event (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ;
 scalar_t__ snd_seq_oss_process_timer_event (TYPE_3__*,union evrec*) ;
 int snd_seq_oss_timer_cur_tick (TYPE_3__*) ;

__attribute__((used)) static int
insert_queue(struct seq_oss_devinfo *dp, union evrec *rec, struct file *opt)
{
 int rc = 0;
 struct snd_seq_event event;


 if (snd_seq_oss_process_timer_event(dp->timer, rec))
  return 0;


 memset(&event, 0, sizeof(event));

 event.type = SNDRV_SEQ_EVENT_NOTEOFF;
 snd_seq_oss_fill_addr(dp, &event, dp->addr.client, dp->addr.port);

 if (snd_seq_oss_process_event(dp, rec, &event))
  return 0;

 event.time.tick = snd_seq_oss_timer_cur_tick(dp->timer);
 if (dp->timer->realtime || !dp->timer->running)
  snd_seq_oss_dispatch(dp, &event, 0, 0);
 else
  rc = snd_seq_kernel_client_enqueue(dp->cseq, &event, opt,
         !is_nonblock_mode(dp->file_mode));
 return rc;
}
