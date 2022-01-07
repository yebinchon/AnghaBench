
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca_midi {int dummy; } ;


 scalar_t__ ca_midi_input_avail (struct snd_ca_midi*) ;
 int ca_midi_read_data (struct snd_ca_midi*) ;
 int ca_midi_read_stat (struct snd_ca_midi*) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static void ca_midi_clear_rx(struct snd_ca_midi *midi)
{
 int timeout = 100000;
 for (; timeout > 0 && ca_midi_input_avail(midi); timeout--)
  ca_midi_read_data(midi);





}
