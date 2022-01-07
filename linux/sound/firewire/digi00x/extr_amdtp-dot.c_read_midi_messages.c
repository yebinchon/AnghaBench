
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amdtp_stream {int data_block_quadlets; struct amdtp_dot* protocol; } ;
struct amdtp_dot {scalar_t__* midi; } ;
typedef int __be32 ;


 unsigned int MAX_MIDI_PORTS ;
 int snd_rawmidi_receive (scalar_t__,int*,unsigned int) ;

__attribute__((used)) static void read_midi_messages(struct amdtp_stream *s, __be32 *buffer,
          unsigned int data_blocks)
{
 struct amdtp_dot *p = s->protocol;
 unsigned int f, port, len;
 u8 *b;

 for (f = 0; f < data_blocks; f++) {
  b = (u8 *)&buffer[0];

  len = b[3] & 0x0f;
  if (len > 0) {





   if (b[3] >> 4 > 0)
    port = 2;
   else
    port = 0;

   if (port < MAX_MIDI_PORTS && p->midi[port])
    snd_rawmidi_receive(p->midi[port], b + 1, len);
  }

  buffer += s->data_block_quadlets;
 }
}
