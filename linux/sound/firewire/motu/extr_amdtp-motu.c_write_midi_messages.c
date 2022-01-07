
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_rawmidi_substream {int dummy; } ;
struct amdtp_stream {int data_block_quadlets; struct amdtp_motu* protocol; } ;
struct amdtp_motu {scalar_t__ midi_db_count; int midi_byte_offset; size_t midi_flag_offset; scalar_t__ midi_db_interval; int midi; } ;
typedef int __be32 ;


 struct snd_rawmidi_substream* READ_ONCE (int ) ;
 int snd_rawmidi_transmit (struct snd_rawmidi_substream*,int*,int) ;

__attribute__((used)) static void write_midi_messages(struct amdtp_stream *s, __be32 *buffer,
    unsigned int data_blocks)
{
 struct amdtp_motu *p = s->protocol;
 struct snd_rawmidi_substream *midi = READ_ONCE(p->midi);
 u8 *b;
 int i;

 for (i = 0; i < data_blocks; i++) {
  b = (u8 *)buffer;

  if (midi && p->midi_db_count == 0 &&
      snd_rawmidi_transmit(midi, b + p->midi_byte_offset, 1) == 1) {
   b[p->midi_flag_offset] = 0x01;
  } else {
   b[p->midi_byte_offset] = 0x00;
   b[p->midi_flag_offset] = 0x00;
  }

  buffer += s->data_block_quadlets;

  if (--p->midi_db_count < 0)
   p->midi_db_count = p->midi_db_interval;
 }
}
