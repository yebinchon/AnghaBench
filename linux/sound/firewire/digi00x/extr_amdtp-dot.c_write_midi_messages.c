
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amdtp_stream {int data_block_quadlets; struct amdtp_dot* protocol; } ;
struct amdtp_dot {int ** midi; } ;
typedef int __be32 ;


 unsigned int MAX_MIDI_PORTS ;
 scalar_t__ midi_ratelimit_per_packet (struct amdtp_stream*,unsigned int) ;
 int midi_use_bytes (struct amdtp_stream*,unsigned int,int) ;
 int snd_rawmidi_transmit (int *,int*,int) ;

__attribute__((used)) static void write_midi_messages(struct amdtp_stream *s, __be32 *buffer,
  unsigned int data_blocks, unsigned int data_block_counter)
{
 struct amdtp_dot *p = s->protocol;
 unsigned int f, port;
 int len;
 u8 *b;

 for (f = 0; f < data_blocks; f++) {
  port = (data_block_counter + f) % 8;
  b = (u8 *)&buffer[0];

  len = 0;
  if (port < MAX_MIDI_PORTS &&
      midi_ratelimit_per_packet(s, port) &&
      p->midi[port] != ((void*)0))
   len = snd_rawmidi_transmit(p->midi[port], b + 1, 2);

  if (len > 0) {






   if (port == 2)
    b[3] = 0xe0;
   else if (port == 1)
    b[3] = 0x20;
   else
    b[3] = 0x00;
   b[3] |= len;
   midi_use_bytes(s, port, len);
  } else {
   b[1] = 0;
   b[2] = 0;
   b[3] = 0;
  }
  b[0] = 0x80;

  buffer += s->data_block_quadlets;
 }
}
