
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_devinfo {int max_mididev; } ;


 int snd_seq_oss_midi_close (struct seq_oss_devinfo*,int) ;

void
snd_seq_oss_midi_cleanup(struct seq_oss_devinfo *dp)
{
 int i;
 for (i = 0; i < dp->max_mididev; i++)
  snd_seq_oss_midi_close(dp, i);
 dp->max_mididev = 0;
}
