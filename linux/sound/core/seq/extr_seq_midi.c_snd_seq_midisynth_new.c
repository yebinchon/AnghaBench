
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct seq_midisynth {int device; int subdevice; struct snd_card* card; int parser; } ;


 int ENOMEM ;
 int MAX_MIDI_EVENT_BUF ;
 scalar_t__ snd_midi_event_new (int ,int *) ;

__attribute__((used)) static int snd_seq_midisynth_new(struct seq_midisynth *msynth,
     struct snd_card *card,
     int device,
     int subdevice)
{
 if (snd_midi_event_new(MAX_MIDI_EVENT_BUF, &msynth->parser) < 0)
  return -ENOMEM;
 msynth->card = card;
 msynth->device = device;
 msynth->subdevice = subdevice;
 return 0;
}
