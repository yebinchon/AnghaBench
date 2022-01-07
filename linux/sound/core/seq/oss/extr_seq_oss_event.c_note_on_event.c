
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_event {int dummy; } ;
struct TYPE_3__ {int event_passing; } ;
struct seq_oss_synthinfo {int nr_voices; TYPE_2__* ch; TYPE_1__ arg; } ;
struct seq_oss_devinfo {int dummy; } ;
struct TYPE_4__ {int note; int vel; } ;


 int EINVAL ;
 int ENXIO ;
 int SNDRV_SEQ_EVENT_KEYPRESS ;
 int SNDRV_SEQ_EVENT_NOTEOFF ;
 int SNDRV_SEQ_EVENT_NOTEON ;



 int array_index_nospec (int,int) ;
 int set_note_event (struct seq_oss_devinfo*,int,int,int,int,int,struct snd_seq_event*) ;
 struct seq_oss_synthinfo* snd_seq_oss_synth_info (struct seq_oss_devinfo*,int) ;

__attribute__((used)) static int
note_on_event(struct seq_oss_devinfo *dp, int dev, int ch, int note, int vel, struct snd_seq_event *ev)
{
 struct seq_oss_synthinfo *info;

 info = snd_seq_oss_synth_info(dp, dev);
 if (!info)
  return -ENXIO;

 switch (info->arg.event_passing) {
 case 129:
  if (! info->ch || ch < 0 || ch >= info->nr_voices) {

   return set_note_event(dp, dev, SNDRV_SEQ_EVENT_NOTEON, ch, note, vel, ev);
  }

  ch = array_index_nospec(ch, info->nr_voices);
  if (note == 255 && info->ch[ch].note >= 0) {

   int type;




    if (info->ch[ch].vel)

    type = SNDRV_SEQ_EVENT_KEYPRESS;
   else

    type = SNDRV_SEQ_EVENT_NOTEON;
   info->ch[ch].vel = vel;
   return set_note_event(dp, dev, type, ch, info->ch[ch].note, vel, ev);
  } else if (note >= 128)
   return -EINVAL;

  if (note != info->ch[ch].note && info->ch[ch].note >= 0)

   set_note_event(dp, dev, SNDRV_SEQ_EVENT_NOTEOFF, ch, info->ch[ch].note, 0, ev);

  info->ch[ch].note = note;
  info->ch[ch].vel = vel;
  if (vel)
   return set_note_event(dp, dev, SNDRV_SEQ_EVENT_NOTEON, ch, note, vel, ev);
  return -EINVAL;

 case 130:

  return set_note_event(dp, dev, SNDRV_SEQ_EVENT_NOTEON, ch, note, vel, ev);

 case 128:
  if (note >= 128)
   return set_note_event(dp, dev, SNDRV_SEQ_EVENT_KEYPRESS, ch, note - 128, vel, ev);
  else
   return set_note_event(dp, dev, SNDRV_SEQ_EVENT_NOTEON, ch, note, vel, ev);
 }
 return -EINVAL;
}
