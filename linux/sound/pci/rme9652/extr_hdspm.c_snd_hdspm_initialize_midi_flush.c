
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int midiPorts; } ;


 int snd_hdspm_flush_midi_input (struct hdspm*,int) ;

__attribute__((used)) static inline void snd_hdspm_initialize_midi_flush(struct hdspm * hdspm)
{
 int i;

 for (i = 0; i < hdspm->midiPorts; i++)
  snd_hdspm_flush_midi_input(hdspm, i);
}
