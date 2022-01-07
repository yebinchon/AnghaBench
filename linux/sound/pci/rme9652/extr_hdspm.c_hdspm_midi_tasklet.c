
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdspm {int midiPorts; TYPE_1__* midi; } ;
struct TYPE_2__ {scalar_t__ pending; } ;


 int snd_hdspm_midi_input_read (TYPE_1__*) ;

__attribute__((used)) static void hdspm_midi_tasklet(unsigned long arg)
{
 struct hdspm *hdspm = (struct hdspm *)arg;
 int i = 0;

 while (i < hdspm->midiPorts) {
  if (hdspm->midi[i].pending)
   snd_hdspm_midi_input_read(&hdspm->midi[i]);

  i++;
 }
}
