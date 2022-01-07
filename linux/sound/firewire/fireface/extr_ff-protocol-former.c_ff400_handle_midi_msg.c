
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_rawmidi_substream {int dummy; } ;
struct snd_ff {int * tx_midi_substreams; } ;
typedef int __le32 ;


 struct snd_rawmidi_substream* READ_ONCE (int ) ;
 int le32_to_cpu (int ) ;
 int snd_rawmidi_receive (struct snd_rawmidi_substream*,int*,int) ;

__attribute__((used)) static void ff400_handle_midi_msg(struct snd_ff *ff, unsigned int offset,
      __le32 *buf, size_t length)
{
 int i;

 for (i = 0; i < length / 4; i++) {
  u32 quad = le32_to_cpu(buf[i]);
  u8 byte;
  unsigned int index;
  struct snd_rawmidi_substream *substream;







  index = (quad >> 8) & 0xff;
  if (index > 0) {
   substream = READ_ONCE(ff->tx_midi_substreams[0]);
   if (substream != ((void*)0)) {
    byte = quad & 0xff;
    snd_rawmidi_receive(substream, &byte, 1);
   }
  }


  index = (quad >> 24) & 0xff;
  if (index > 0) {
   substream = READ_ONCE(ff->tx_midi_substreams[1]);
   if (substream != ((void*)0)) {
    byte = (quad >> 16) & 0xff;
    snd_rawmidi_receive(substream, &byte, 1);
   }
  }
 }
}
