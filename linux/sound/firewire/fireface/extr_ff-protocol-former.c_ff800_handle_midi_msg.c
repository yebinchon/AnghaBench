
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_rawmidi_substream {int dummy; } ;
struct snd_ff {int * tx_midi_substreams; } ;
typedef int __le32 ;


 struct snd_rawmidi_substream* READ_ONCE (int ) ;
 int le32_to_cpu (int ) ;
 int snd_rawmidi_receive (struct snd_rawmidi_substream*,int*,int) ;

__attribute__((used)) static void ff800_handle_midi_msg(struct snd_ff *ff, unsigned int offset,
      __le32 *buf, size_t length)
{
 int i;

 for (i = 0; i < length / 4; i++) {
  u8 byte = le32_to_cpu(buf[i]) & 0xff;
  struct snd_rawmidi_substream *substream;

  substream = READ_ONCE(ff->tx_midi_substreams[0]);
  if (substream)
   snd_rawmidi_receive(substream, &byte, 1);
 }
}
