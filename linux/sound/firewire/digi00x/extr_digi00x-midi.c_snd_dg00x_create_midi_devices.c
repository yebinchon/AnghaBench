
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {scalar_t__ is_console; } ;


 int DOT_MIDI_IN_PORTS ;
 int DOT_MIDI_OUT_PORTS ;
 int add_substream_pair (struct snd_dg00x*,int,int,int) ;

int snd_dg00x_create_midi_devices(struct snd_dg00x *dg00x)
{
 int err;


 err = add_substream_pair(dg00x, DOT_MIDI_OUT_PORTS, DOT_MIDI_IN_PORTS,
     0);
 if (err < 0)
  return err;

 if (dg00x->is_console)
  err = add_substream_pair(dg00x, 1, 1, 1);

 return err;
}
