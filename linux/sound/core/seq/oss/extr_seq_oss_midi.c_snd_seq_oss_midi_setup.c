
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_devinfo {int max_mididev; } ;


 int max_midi_devs ;

void
snd_seq_oss_midi_setup(struct seq_oss_devinfo *dp)
{
 dp->max_mididev = max_midi_devs;
}
