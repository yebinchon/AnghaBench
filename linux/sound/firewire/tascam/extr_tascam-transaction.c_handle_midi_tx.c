
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {unsigned long long offset; } ;
struct snd_tscm {int * tx_midi_substreams; TYPE_2__* spec; TYPE_1__ async_handler; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;
struct TYPE_4__ {unsigned int midi_capture_ports; } ;


 int RCODE_COMPLETE ;
 struct snd_rawmidi_substream* READ_ONCE (int ) ;
 int calculate_message_bytes (int) ;
 int fw_send_response (struct fw_card*,struct fw_request*,int ) ;
 int snd_rawmidi_receive (struct snd_rawmidi_substream*,int*,int) ;

__attribute__((used)) static void handle_midi_tx(struct fw_card *card, struct fw_request *request,
      int tcode, int destination, int source,
      int generation, unsigned long long offset,
      void *data, size_t length, void *callback_data)
{
 struct snd_tscm *tscm = callback_data;
 u32 *buf = (u32 *)data;
 unsigned int messages;
 unsigned int i;
 unsigned int port;
 struct snd_rawmidi_substream *substream;
 u8 *b;
 int bytes;

 if (offset != tscm->async_handler.offset)
  goto end;

 messages = length / 8;
 for (i = 0; i < messages; i++) {
  b = (u8 *)(buf + i * 2);

  port = b[0] >> 4;

  if (port >= tscm->spec->midi_capture_ports)
   goto end;


  bytes = calculate_message_bytes(b[1]);

  if (bytes <= 0) {

   for (bytes = 1; bytes < 4; bytes++) {
    if (b[bytes] == 0xf7)
     break;
   }
   if (bytes == 4)
    bytes = 3;
  }

  substream = READ_ONCE(tscm->tx_midi_substreams[port]);
  if (substream != ((void*)0))
   snd_rawmidi_receive(substream, b + 1, bytes);
 }
end:
 fw_send_response(card, request, RCODE_COMPLETE);
}
