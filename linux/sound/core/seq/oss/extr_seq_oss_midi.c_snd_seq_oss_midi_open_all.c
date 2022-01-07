
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_devinfo {int max_mididev; } ;


 int snd_seq_oss_midi_open (struct seq_oss_devinfo*,int,int) ;

void
snd_seq_oss_midi_open_all(struct seq_oss_devinfo *dp, int file_mode)
{
 int i;
 for (i = 0; i < dp->max_mididev; i++)
  snd_seq_oss_midi_open(dp, i, file_mode);
}
