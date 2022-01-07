
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 scalar_t__ snd_hdspm_midi_input_available (struct hdspm*,int) ;
 int snd_hdspm_midi_read_byte (struct hdspm*,int) ;

__attribute__((used)) static void snd_hdspm_flush_midi_input(struct hdspm *hdspm, int id)
{
 while (snd_hdspm_midi_input_available (hdspm, id))
  snd_hdspm_midi_read_byte (hdspm, id);
}
