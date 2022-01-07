
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_midi_channel {unsigned short midi_program; int* control; } ;
struct TYPE_2__ {int max_channels; struct snd_midi_channel* channels; } ;
struct snd_emux_port {scalar_t__ port_mode; TYPE_1__ chset; } ;
struct snd_emux {int dummy; } ;


 int EMUX_FX_COARSE_SAMPLE_START ;
 int EMUX_FX_FLAG_SET ;
 int EMUX_FX_SAMPLE_START ;
 size_t MIDI_CTL_MSB_PAN ;
 scalar_t__ SNDRV_EMUX_PORT_MODE_OSS_SYNTH ;
 int SNDRV_EMUX_UPDATE_PAN ;
 int _GUS_NUMVOICES ;
 int snd_emux_send_effect (struct snd_emux_port*,struct snd_midi_channel*,int ,int,int ) ;
 int snd_emux_update_channel (struct snd_emux_port*,struct snd_midi_channel*,int ) ;

__attribute__((used)) static void
gusspec_control(struct snd_emux *emu, struct snd_emux_port *port, int cmd,
  unsigned char *event, int atomic, int hop)
{
 int voice;
 unsigned short p1;
 int plong;
 struct snd_midi_channel *chan;

 if (port->port_mode != SNDRV_EMUX_PORT_MODE_OSS_SYNTH)
  return;
 if (cmd == _GUS_NUMVOICES)
  return;
 voice = event[3];
 if (voice < 0 || voice >= port->chset.max_channels)
  return;

 chan = &port->chset.channels[voice];

 p1 = *(unsigned short *) &event[4];
 plong = *(int*) &event[4];

 switch (cmd) {
 case 132:
  chan->midi_program = p1;
  return;

 case 133:

  chan->control[MIDI_CTL_MSB_PAN] = (int)p1 << 3;
  snd_emux_update_channel(port, chan, SNDRV_EMUX_UPDATE_PAN);
  return;

 case 131:
 case 130:

  return;

 case 135:
 case 134:
 case 138:
 case 136:
 case 137:

  return;

 case 128:
  return;

 case 129:
  return;
 }
}
