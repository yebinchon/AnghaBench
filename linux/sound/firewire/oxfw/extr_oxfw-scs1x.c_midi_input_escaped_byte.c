
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_rawmidi_substream {int dummy; } ;


 int snd_rawmidi_receive (struct snd_rawmidi_substream*,int*,int) ;

__attribute__((used)) static void midi_input_escaped_byte(struct snd_rawmidi_substream *stream,
        u8 byte)
{
 u8 nibbles[2];

 nibbles[0] = byte >> 4;
 nibbles[1] = byte & 0x0f;
 snd_rawmidi_receive(stream, nibbles, 2);
}
