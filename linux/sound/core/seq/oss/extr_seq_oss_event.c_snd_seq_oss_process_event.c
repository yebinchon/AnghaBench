
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int code; int parm1; int dev; } ;
struct TYPE_3__ {int buf; int dev; } ;
union evrec {int * c; TYPE_2__ s; TYPE_1__ x; } ;
struct snd_seq_event {int dummy; } ;
struct seq_oss_devinfo {int seq_mode; int file_mode; } ;


 int EINVAL ;
 int SNDRV_SEQ_OSS_FILE_WRITE ;
 int SNDRV_SEQ_OSS_MODE_MUSIC ;
 int chn_common_event (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ;
 int chn_voice_event (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ;
 int extended_event (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ;
 int is_write_mode (int ) ;
 int local_event (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ;
 int old_event (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ;
 int set_echo_event (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ;
 int snd_seq_oss_midi_filemode (struct seq_oss_devinfo*,int ) ;
 int snd_seq_oss_midi_open (struct seq_oss_devinfo*,int ,int) ;
 int snd_seq_oss_midi_putc (struct seq_oss_devinfo*,int ,int ,struct snd_seq_event*) ;
 int snd_seq_oss_synth_raw_event (struct seq_oss_devinfo*,int ,int *,struct snd_seq_event*) ;
 int snd_seq_oss_synth_sysex (struct seq_oss_devinfo*,int ,int ,struct snd_seq_event*) ;
 int timing_event (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ;

int
snd_seq_oss_process_event(struct seq_oss_devinfo *dp, union evrec *q, struct snd_seq_event *ev)
{
 switch (q->s.code) {
 case 130:
  return extended_event(dp, q, ev);

 case 135:
  return chn_voice_event(dp, q, ev);

 case 136:
  return chn_common_event(dp, q, ev);

 case 132:
  return timing_event(dp, q, ev);

 case 134:
  return local_event(dp, q, ev);

 case 133:
  return snd_seq_oss_synth_sysex(dp, q->x.dev, q->x.buf, ev);

 case 129:
  if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
   return -EINVAL;

  if (! is_write_mode(dp->file_mode))
   break;
  if (snd_seq_oss_midi_open(dp, q->s.dev, SNDRV_SEQ_OSS_FILE_WRITE))
   break;
  if (snd_seq_oss_midi_filemode(dp, q->s.dev) & SNDRV_SEQ_OSS_FILE_WRITE)
   return snd_seq_oss_midi_putc(dp, q->s.dev, q->s.parm1, ev);
  break;

 case 131:
  if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
   return -EINVAL;
  return set_echo_event(dp, q, ev);

 case 128:
  if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
   return -EINVAL;
  return snd_seq_oss_synth_raw_event(dp, q->c[1], q->c, ev);

 default:
  if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
   return -EINVAL;
  return old_event(dp, q, ev);
 }
 return -EINVAL;
}
