
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_rawmidi_substream {int number; } ;
struct snd_fw_async_midi_port {int* buf; int on_sysex; int running_status; } ;


 int calculate_message_bytes (int) ;
 int memset (int*,int ,int) ;
 int snd_rawmidi_transmit_peek (struct snd_rawmidi_substream*,int*,int) ;

__attribute__((used)) static int fill_message(struct snd_fw_async_midi_port *port,
   struct snd_rawmidi_substream *substream)
{
 int i, len, consume;
 u8 *label, *msg;
 u8 status;


 label = port->buf;
 msg = port->buf + 1;

 consume = snd_rawmidi_transmit_peek(substream, msg, 3);
 if (consume == 0)
  return 0;


 if (port->on_sysex) {

  for (i = 0; i < consume; ++i) {
   if (msg[i] == 0xf7) {
    port->on_sysex = 0;
    break;
   }
  }


  if (!port->on_sysex) {
   consume = i + 1;
   *label = (substream->number << 4) | 0x07;

  } else if (consume == 3) {
   *label = (substream->number << 4) | 0x04;

  } else {
   return 0;
  }

  len = consume;
 } else {

  if (msg[0] == 0xf0) {

   port->on_sysex = 1;
   return 0;
  } else {

   if ((msg[0] & 0x80) != 0x80)
    status = port->running_status;
   else
    status = msg[0];


   len = calculate_message_bytes(status);
   if (len <= 0)
    return 0;


   if ((msg[0] & 0x80) != 0x80) {

    if (consume < len - 1)
     return 0;
    consume = len - 1;

    msg[2] = msg[1];
    msg[1] = msg[0];
    msg[0] = port->running_status;
   } else {

    if (consume < len)
     return 0;
    consume = len;

    port->running_status = msg[0];
   }
  }

  *label = (substream->number << 4) | (msg[0] >> 4);
 }

 if (len > 0 && len < 3)
  memset(msg + len, 0, 3 - len);

 return consume;
}
