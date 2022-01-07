
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;
struct amdtp_stream {struct amdtp_dot* protocol; } ;
struct amdtp_dot {int * midi; } ;


 unsigned int MAX_MIDI_PORTS ;
 int WRITE_ONCE (int ,struct snd_rawmidi_substream*) ;

void amdtp_dot_midi_trigger(struct amdtp_stream *s, unsigned int port,
     struct snd_rawmidi_substream *midi)
{
 struct amdtp_dot *p = s->protocol;

 if (port < MAX_MIDI_PORTS)
  WRITE_ONCE(p->midi[port], midi);
}
