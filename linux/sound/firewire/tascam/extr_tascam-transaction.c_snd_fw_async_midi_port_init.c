
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_fw_async_midi_port {int idling; int error; int on_sysex; scalar_t__ running_status; } ;



void snd_fw_async_midi_port_init(struct snd_fw_async_midi_port *port)
{
 port->idling = 1;
 port->error = 0;
 port->running_status = 0;
 port->on_sysex = 0;
}
