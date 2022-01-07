
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;
struct snd_fw_async_midi_port {int error; int idling; int work; scalar_t__ next_ktime; int consume_bytes; int substream; } ;
struct fw_card {int dummy; } ;


 int RCODE_COMPLETE ;
 struct snd_rawmidi_substream* READ_ONCE (int ) ;
 int rcode_is_permanent_error (int) ;
 int schedule_work (int *) ;
 int snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int ) ;
 int snd_rawmidi_transmit_empty (struct snd_rawmidi_substream*) ;

__attribute__((used)) static void async_midi_port_callback(struct fw_card *card, int rcode,
         void *data, size_t length,
         void *callback_data)
{
 struct snd_fw_async_midi_port *port = callback_data;
 struct snd_rawmidi_substream *substream = READ_ONCE(port->substream);


 if (substream == ((void*)0))
  return;

 if (rcode == RCODE_COMPLETE)
  snd_rawmidi_transmit_ack(substream, port->consume_bytes);
 else if (!rcode_is_permanent_error(rcode))

  port->next_ktime = 0;
 else

  port->error = 1;

 port->idling = 1;

 if (!snd_rawmidi_transmit_empty(substream))
  schedule_work(&port->work);
}
