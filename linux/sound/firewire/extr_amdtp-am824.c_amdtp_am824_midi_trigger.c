
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;
struct amdtp_stream {struct amdtp_am824* protocol; } ;
struct amdtp_am824 {unsigned int midi_ports; int * midi; } ;


 int WRITE_ONCE (int ,struct snd_rawmidi_substream*) ;

void amdtp_am824_midi_trigger(struct amdtp_stream *s, unsigned int port,
         struct snd_rawmidi_substream *midi)
{
 struct amdtp_am824 *p = s->protocol;

 if (port < p->midi_ports)
  WRITE_ONCE(p->midi[port], midi);
}
