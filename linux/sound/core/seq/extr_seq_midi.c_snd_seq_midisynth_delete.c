
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_midisynth {scalar_t__ seq_client; int parser; int seq_port; } ;


 int snd_midi_event_free (int ) ;
 int snd_seq_event_port_detach (scalar_t__,int ) ;

__attribute__((used)) static void snd_seq_midisynth_delete(struct seq_midisynth *msynth)
{
 if (msynth == ((void*)0))
  return;

 if (msynth->seq_client > 0) {

  snd_seq_event_port_detach(msynth->seq_client, msynth->seq_port);
 }

 snd_midi_event_free(msynth->parser);
}
