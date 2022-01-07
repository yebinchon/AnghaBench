
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channel; int note; int velocity; } ;
struct TYPE_3__ {TYPE_2__ note; } ;
struct snd_seq_event {int type; TYPE_1__ data; } ;
struct seq_oss_devinfo {int dummy; } ;


 int ENXIO ;
 int snd_seq_oss_synth_addr (struct seq_oss_devinfo*,int,struct snd_seq_event*) ;
 int snd_seq_oss_synth_info (struct seq_oss_devinfo*,int) ;

__attribute__((used)) static int
set_note_event(struct seq_oss_devinfo *dp, int dev, int type, int ch, int note, int vel, struct snd_seq_event *ev)
{
 if (!snd_seq_oss_synth_info(dp, dev))
  return -ENXIO;

 ev->type = type;
 snd_seq_oss_synth_addr(dp, dev, ev);
 ev->data.note.channel = ch;
 ev->data.note.note = note;
 ev->data.note.velocity = vel;

 return 0;
}
