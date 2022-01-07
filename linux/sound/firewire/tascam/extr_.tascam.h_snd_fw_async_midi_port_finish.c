
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_fw_async_midi_port {int error; int work; int * substream; } ;


 int cancel_work_sync (int *) ;

__attribute__((used)) static inline void
snd_fw_async_midi_port_finish(struct snd_fw_async_midi_port *port)
{
 port->substream = ((void*)0);
 cancel_work_sync(&port->work);
 port->error = 0;
}
