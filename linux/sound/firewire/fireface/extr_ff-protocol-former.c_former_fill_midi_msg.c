
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_rawmidi_substream {int dummy; } ;
struct snd_ff {int* rx_bytes; int ** msg_buf; } ;


 int SND_FF_MAXIMIM_MIDI_QUADS ;
 int cpu_to_le32 (int ) ;
 int snd_rawmidi_transmit_peek (struct snd_rawmidi_substream*,int *,int ) ;

__attribute__((used)) static int former_fill_midi_msg(struct snd_ff *ff,
    struct snd_rawmidi_substream *substream,
    unsigned int port)
{
 u8 *buf = (u8 *)ff->msg_buf[port];
 int len;
 int i;

 len = snd_rawmidi_transmit_peek(substream, buf,
     SND_FF_MAXIMIM_MIDI_QUADS);
 if (len <= 0)
  return len;


 for (i = len - 1; i >= 0; --i)
  ff->msg_buf[port][i] = cpu_to_le32(buf[i]);
 ff->rx_bytes[port] = len;

 return len;
}
