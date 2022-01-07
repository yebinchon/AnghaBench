
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emux_port {int volume_atten; TYPE_1__* oss_arg; scalar_t__ drum_flags; int port_mode; } ;
struct TYPE_2__ {int event_passing; } ;


 scalar_t__ DEFAULT_DRUM_FLAGS ;
 int SNDRV_EMUX_PORT_MODE_OSS_MIDI ;
 int SNDRV_EMUX_PORT_MODE_OSS_SYNTH ;
 int SNDRV_SEQ_OSS_PROCESS_EVENTS ;
 int SNDRV_SEQ_OSS_PROCESS_KEYPRESS ;

__attribute__((used)) static void
reset_port_mode(struct snd_emux_port *port, int midi_mode)
{
 if (midi_mode) {
  port->port_mode = SNDRV_EMUX_PORT_MODE_OSS_MIDI;
  port->drum_flags = DEFAULT_DRUM_FLAGS;
  port->volume_atten = 0;
  port->oss_arg->event_passing = SNDRV_SEQ_OSS_PROCESS_KEYPRESS;
 } else {
  port->port_mode = SNDRV_EMUX_PORT_MODE_OSS_SYNTH;
  port->drum_flags = 0;
  port->volume_atten = 32;
  port->oss_arg->event_passing = SNDRV_SEQ_OSS_PROCESS_EVENTS;
 }
}
