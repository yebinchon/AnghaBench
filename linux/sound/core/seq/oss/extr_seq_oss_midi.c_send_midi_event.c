
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tick; } ;
struct snd_seq_event {scalar_t__ type; TYPE_1__ time; } ;
struct seq_oss_midi {int seq_device; int coder; } ;
struct seq_oss_devinfo {int readq; TYPE_2__* timer; int seq_mode; } ;
typedef int msg ;
struct TYPE_4__ {int running; } ;


 scalar_t__ SNDRV_SEQ_EVENT_SYSEX ;
 int snd_midi_event_decode (int ,char*,int,struct snd_seq_event*) ;
 int snd_seq_oss_readq_put_timestamp (int ,int ,int ) ;
 int snd_seq_oss_readq_puts (int ,int ,char*,int) ;
 int snd_seq_oss_readq_sysex (int ,int ,struct snd_seq_event*) ;
 int snd_seq_oss_timer_start (TYPE_2__*) ;

__attribute__((used)) static int
send_midi_event(struct seq_oss_devinfo *dp, struct snd_seq_event *ev, struct seq_oss_midi *mdev)
{
 char msg[32];
 int len;

 snd_seq_oss_readq_put_timestamp(dp->readq, ev->time.tick, dp->seq_mode);
 if (!dp->timer->running)
  len = snd_seq_oss_timer_start(dp->timer);
 if (ev->type == SNDRV_SEQ_EVENT_SYSEX) {
  snd_seq_oss_readq_sysex(dp->readq, mdev->seq_device, ev);
 } else {
  len = snd_midi_event_decode(mdev->coder, msg, sizeof(msg), ev);
  if (len > 0)
   snd_seq_oss_readq_puts(dp->readq, mdev->seq_device, msg, len);
 }

 return 0;
}
