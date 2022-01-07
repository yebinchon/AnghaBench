
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {int max_packet_size; struct snd_line6_midi* line6midi; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct midi_buffer {int dummy; } ;
struct snd_line6_midi {struct midi_buffer midibuf_out; } ;
struct TYPE_2__ {struct usb_line6* line6; } ;


 int LINE6_FALLBACK_MAXPACKETSIZE ;
 int line6_midibuf_bytes_free (struct midi_buffer*) ;
 int line6_midibuf_read (struct midi_buffer*,unsigned char*,int) ;
 int line6_midibuf_write (struct midi_buffer*,unsigned char*,int) ;
 TYPE_1__* line6_rawmidi_substream_midi (struct snd_rawmidi_substream*) ;
 int min (int ,int ) ;
 int send_midi_async (struct usb_line6*,unsigned char*,int) ;
 int snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int) ;
 int snd_rawmidi_transmit_peek (struct snd_rawmidi_substream*,unsigned char*,int) ;

__attribute__((used)) static void line6_midi_transmit(struct snd_rawmidi_substream *substream)
{
 struct usb_line6 *line6 =
     line6_rawmidi_substream_midi(substream)->line6;
 struct snd_line6_midi *line6midi = line6->line6midi;
 struct midi_buffer *mb = &line6midi->midibuf_out;
 unsigned char chunk[LINE6_FALLBACK_MAXPACKETSIZE];
 int req, done;

 for (;;) {
  req = min(line6_midibuf_bytes_free(mb), line6->max_packet_size);
  done = snd_rawmidi_transmit_peek(substream, chunk, req);

  if (done == 0)
   break;

  line6_midibuf_write(mb, chunk, done);
  snd_rawmidi_transmit_ack(substream, done);
 }

 for (;;) {
  done = line6_midibuf_read(mb, chunk,
       LINE6_FALLBACK_MAXPACKETSIZE);

  if (done == 0)
   break;

  send_midi_async(line6, chunk, done);
 }
}
