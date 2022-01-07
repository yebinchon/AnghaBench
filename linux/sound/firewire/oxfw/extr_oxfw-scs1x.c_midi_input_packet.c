
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_rawmidi_substream {int dummy; } ;
struct fw_scs1x {int dummy; } ;
typedef int eox ;


 int ARRAY_SIZE (int const*) ;
 int const HSS1394_TAG_USER_DATA ;
 int midi_input_byte (struct fw_scs1x*,struct snd_rawmidi_substream*,int const) ;
 int midi_input_escaped_byte (struct snd_rawmidi_substream*,int const) ;
 int snd_rawmidi_receive (struct snd_rawmidi_substream*,int const*,int) ;
 int const* sysex_escape_prefix ;

__attribute__((used)) static void midi_input_packet(struct fw_scs1x *scs,
         struct snd_rawmidi_substream *stream,
         const u8 *data, unsigned int bytes)
{
 unsigned int i;
 const u8 eox = 0xf7;

 if (data[0] == HSS1394_TAG_USER_DATA) {
  for (i = 1; i < bytes; ++i)
   midi_input_byte(scs, stream, data[i]);
 } else {
  snd_rawmidi_receive(stream, sysex_escape_prefix,
        ARRAY_SIZE(sysex_escape_prefix));
  for (i = 0; i < bytes; ++i)
   midi_input_escaped_byte(stream, data[i]);
  snd_rawmidi_receive(stream, &eox, sizeof(eox));
 }
}
