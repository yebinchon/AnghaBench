
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;
struct snd_fw_async_midi_port {int work; struct snd_rawmidi_substream* substream; int error; } ;


 int schedule_work (int *) ;

__attribute__((used)) static inline void
snd_fw_async_midi_port_run(struct snd_fw_async_midi_port *port,
      struct snd_rawmidi_substream *substream)
{
 if (!port->error) {
  port->substream = substream;
  schedule_work(&port->work);
 }
}
