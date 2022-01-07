
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;
struct snd_ff {int* rx_midi_error; int * rx_midi_work; int * rx_bytes; scalar_t__* next_ktime; int * rx_midi_substreams; } ;


 int RCODE_COMPLETE ;
 struct snd_rawmidi_substream* READ_ONCE (int ) ;
 scalar_t__ rcode_is_permanent_error (int) ;
 int schedule_work (int *) ;
 int snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int ) ;
 int snd_rawmidi_transmit_empty (struct snd_rawmidi_substream*) ;

__attribute__((used)) static void finish_transmit_midi_msg(struct snd_ff *ff, unsigned int port,
         int rcode)
{
 struct snd_rawmidi_substream *substream =
    READ_ONCE(ff->rx_midi_substreams[port]);

 if (rcode_is_permanent_error(rcode)) {
  ff->rx_midi_error[port] = 1;
  return;
 }

 if (rcode != RCODE_COMPLETE) {

  ff->next_ktime[port] = 0;
  schedule_work(&ff->rx_midi_work[port]);
  return;
 }

 snd_rawmidi_transmit_ack(substream, ff->rx_bytes[port]);
 ff->rx_bytes[port] = 0;

 if (!snd_rawmidi_transmit_empty(substream))
  schedule_work(&ff->rx_midi_work[port]);
}
