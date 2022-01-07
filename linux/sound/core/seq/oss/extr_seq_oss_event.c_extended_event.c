
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; int p1; int dev; int chn; scalar_t__ p2; scalar_t__ p3; } ;
union evrec {int c; TYPE_1__ e; } ;
struct snd_seq_event {int dummy; } ;
struct seq_oss_devinfo {int dummy; } ;


 int CTL_PAN ;


 int EINVAL ;







 int SNDRV_SEQ_EVENT_CHANPRESS ;
 int SNDRV_SEQ_EVENT_CONTROL14 ;
 int SNDRV_SEQ_EVENT_CONTROLLER ;
 int SNDRV_SEQ_EVENT_PGMCHANGE ;
 int SNDRV_SEQ_EVENT_PITCHBEND ;
 int SNDRV_SEQ_EVENT_REGPARAM ;
 int note_off_event (struct seq_oss_devinfo*,int ,int ,int,scalar_t__,struct snd_seq_event*) ;
 int note_on_event (struct seq_oss_devinfo*,int ,int ,int,scalar_t__,struct snd_seq_event*) ;
 int set_control_event (struct seq_oss_devinfo*,int ,int ,int ,int,int,struct snd_seq_event*) ;
 int snd_seq_oss_synth_raw_event (struct seq_oss_devinfo*,int ,int ,struct snd_seq_event*) ;

__attribute__((used)) static int
extended_event(struct seq_oss_devinfo *dp, union evrec *q, struct snd_seq_event *ev)
{
 int val;

 switch (q->e.cmd) {
 case 131:
  return note_off_event(dp, q->e.dev, q->e.chn, q->e.p1, q->e.p2, ev);

 case 130:
  return note_on_event(dp, q->e.dev, q->e.chn, q->e.p1, q->e.p2, ev);

 case 129:
  return set_control_event(dp, q->e.dev, SNDRV_SEQ_EVENT_PGMCHANGE,
      q->e.chn, 0, q->e.p1, ev);

 case 134:
  return set_control_event(dp, q->e.dev, SNDRV_SEQ_EVENT_CHANPRESS,
      q->e.chn, 0, q->e.p1, ev);

 case 133:

  val = (char)q->e.p1;
  val = (val + 128) / 2;
  return set_control_event(dp, q->e.dev, SNDRV_SEQ_EVENT_CONTROLLER,
      q->e.chn, CTL_PAN, val, ev);

 case 132:
  val = ((short)q->e.p3 << 8) | (short)q->e.p2;
  switch (q->e.p1) {
  case 136:

   return set_control_event(dp, q->e.dev,
       SNDRV_SEQ_EVENT_PITCHBEND,
       q->e.chn, 0, val, ev);
  case 135:

   return set_control_event(dp, q->e.dev,
       SNDRV_SEQ_EVENT_REGPARAM,
       q->e.chn, 0, val*128/100, ev);
  default:
   return set_control_event(dp, q->e.dev,
        SNDRV_SEQ_EVENT_CONTROL14,
        q->e.chn, q->e.p1, val, ev);
  }

 case 128:
  return snd_seq_oss_synth_raw_event(dp, q->e.dev, q->c, ev);

 }
 return -EINVAL;
}
