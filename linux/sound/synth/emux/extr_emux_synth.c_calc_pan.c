
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_midi_channel {int* control; } ;
struct TYPE_3__ {scalar_t__ fixpan; int pan; } ;
struct snd_emux_voice {int apan; int aaux; TYPE_2__* emu; TYPE_1__ reg; struct snd_midi_channel* chan; } ;
struct TYPE_4__ {scalar_t__ linear_panning; } ;


 int LIMITVALUE (int,int ,int) ;
 size_t MIDI_CTL_MSB_PAN ;
 void** pan_volumes ;

__attribute__((used)) static int
calc_pan(struct snd_emux_voice *vp)
{
 struct snd_midi_channel *chan = vp->chan;
 int pan;


 if (vp->reg.fixpan > 0)
  pan = 255 - (int)vp->reg.fixpan * 2;
 else {
  pan = chan->control[MIDI_CTL_MSB_PAN] - 64;
  if (vp->reg.pan >= 0)
   pan += vp->reg.pan - 64;
  pan = 127 - (int)pan * 2;
 }
 LIMITVALUE(pan, 0, 255);

 if (vp->emu->linear_panning) {

  if (pan != vp->apan) {
   vp->apan = pan;
   if (pan == 0)
    vp->aaux = 0xff;
   else
    vp->aaux = (-pan) & 0xff;
   return 1;
  } else
   return 0;
 } else {

  if (vp->apan != (int)pan_volumes[pan]) {
   vp->apan = pan_volumes[pan];
   vp->aaux = pan_volumes[255 - pan];
   return 1;
  }
  return 0;
 }
}
