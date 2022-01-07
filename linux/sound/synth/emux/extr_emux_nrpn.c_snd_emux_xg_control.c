
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel {int * control; } ;
struct snd_emux_port {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EMUX_FX_FLAG_ADD ;
 int send_converted_effect (int ,int ,struct snd_emux_port*,struct snd_midi_channel*,int,int ,int ) ;
 int xg_effects ;

int
snd_emux_xg_control(struct snd_emux_port *port, struct snd_midi_channel *chan,
      int param)
{
 return send_converted_effect(xg_effects, ARRAY_SIZE(xg_effects),
         port, chan, param,
         chan->control[param],
         EMUX_FX_FLAG_ADD);
}
