
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_midi_channel {unsigned short midi_pressure; int drum_channel; } ;
struct TYPE_3__ {int max_channels; struct snd_midi_channel* channels; } ;
struct snd_emux_port {short volume_atten; unsigned int drum_flags; short* ctrls; TYPE_1__ chset; } ;
struct TYPE_4__ {int (* oss_ioctl ) (struct snd_emux*,int,unsigned short,short) ;} ;
struct snd_emux {TYPE_2__ ops; int sflist; } ;


 unsigned short EMUX_MD_END ;
 int MIDI_CTL_ALL_NOTES_OFF ;
 int MIDI_CTL_ALL_SOUNDS_OFF ;
 int SNDRV_EMUX_UPDATE_FM2FRQ2 ;
 int SNDRV_EMUX_UPDATE_FMMOD ;
 int SNDRV_EMUX_UPDATE_VOLUME ;
 int fake_event (struct snd_emux*,struct snd_emux_port*,int,int ,int ,int,int) ;
 int reset_port_mode (struct snd_emux_port*,unsigned short) ;
 int snd_emux_reset_port (struct snd_emux_port*) ;
 int snd_emux_send_effect_oss (struct snd_emux_port*,struct snd_midi_channel*,unsigned short,short) ;
 int snd_emux_terminate_all (struct snd_emux*) ;
 int snd_emux_update_channel (struct snd_emux_port*,struct snd_midi_channel*,int) ;
 int snd_emux_update_port (struct snd_emux_port*,int ) ;
 int snd_soundfont_remove_unlocked (int ) ;
 int stub1 (struct snd_emux*,int,unsigned short,short) ;

__attribute__((used)) static void
emuspec_control(struct snd_emux *emu, struct snd_emux_port *port, int cmd,
  unsigned char *event, int atomic, int hop)
{
 int voice;
 unsigned short p1;
 short p2;
 int i;
 struct snd_midi_channel *chan;

 voice = event[3];
 if (voice < 0 || voice >= port->chset.max_channels)
  chan = ((void*)0);
 else
  chan = &port->chset.channels[voice];

 p1 = *(unsigned short *) &event[4];
 p2 = *(short *) &event[6];

 switch (cmd) {





 case 130:
  if (chan)
   snd_emux_send_effect_oss(port, chan, p1, p2);
  break;

 case 129:
  snd_emux_terminate_all(emu);
  break;

 case 128:

  break;
 case 131:

  break;

 case 133:
  fake_event(emu, port, voice, MIDI_CTL_ALL_NOTES_OFF, 0, atomic, hop);
  break;
 case 134:
  fake_event(emu, port, voice, MIDI_CTL_ALL_SOUNDS_OFF, 0, atomic, hop);
  break;

 case 136:
  if (p2) {
   port->volume_atten = (short)p1;
   snd_emux_update_port(port, SNDRV_EMUX_UPDATE_VOLUME);
  }
  break;

 case 139:
  if (chan) {
   chan->midi_pressure = p1;
   snd_emux_update_channel(port, chan, SNDRV_EMUX_UPDATE_FMMOD|SNDRV_EMUX_UPDATE_FM2FRQ2);
  }
  break;

 case 140:
  reset_port_mode(port, p1);
  snd_emux_reset_port(port);
  break;

 case 137:
  port->drum_flags = *(unsigned int*)&event[4];
  for (i = 0; i < port->chset.max_channels; i++) {
   chan = &port->chset.channels[i];
   chan->drum_channel = ((port->drum_flags >> i) & 1) ? 1 : 0;
  }
  break;

 case 135:
  if (p1 < EMUX_MD_END)
   port->ctrls[p1] = p2;
  break;
 case 138:
  break;

 default:
  if (emu->ops.oss_ioctl)
   emu->ops.oss_ioctl(emu, cmd, p1, p2);
  break;
 }
}
