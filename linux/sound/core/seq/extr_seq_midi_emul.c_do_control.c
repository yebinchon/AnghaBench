
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_op {int (* control ) (void*,int,struct snd_midi_channel*) ;int (* note_off ) (void*,int,int ,struct snd_midi_channel*) ;} ;
struct snd_midi_channel_set {int midi_mode; } ;
struct snd_midi_channel {int* control; int* note; int drum_channel; int param_type; } ;


 int ARRAY_SIZE (int*) ;
 int SNDRV_MIDI_MODE_XG ;
 void* SNDRV_MIDI_NOTE_OFF ;
 int SNDRV_MIDI_NOTE_ON ;
 int SNDRV_MIDI_NOTE_RELEASED ;
 int SNDRV_MIDI_NOTE_SOSTENUTO ;
 int SNDRV_MIDI_PARAM_TYPE_NONREGISTERED ;
 int SNDRV_MIDI_PARAM_TYPE_REGISTERED ;
 int all_notes_off (struct snd_midi_op*,void*,struct snd_midi_channel*) ;
 int all_sounds_off (struct snd_midi_op*,void*,struct snd_midi_channel*) ;
 int nrpn (struct snd_midi_op*,void*,struct snd_midi_channel*,struct snd_midi_channel_set*) ;
 int rpn (struct snd_midi_op*,void*,struct snd_midi_channel*,struct snd_midi_channel_set*) ;
 int snd_midi_reset_controllers (struct snd_midi_channel*) ;
 int stub1 (void*,int,int ,struct snd_midi_channel*) ;
 int stub2 (void*,int,int ,struct snd_midi_channel*) ;
 int stub3 (void*,int,struct snd_midi_channel*) ;

__attribute__((used)) static void
do_control(struct snd_midi_op *ops, void *drv, struct snd_midi_channel_set *chset,
    struct snd_midi_channel *chan, int control, int value)
{
 int i;

 if (control >= ARRAY_SIZE(chan->control))
  return;


 if ((control >=64 && control <=69) || (control >= 80 && control <= 83)) {

  value = (value >= 64)? 127: 0;
 }
 chan->control[control] = value;

 switch (control) {
 case 128:
  if (value == 0) {

   for (i = 0; i < 128; i++) {
    if (chan->note[i] & SNDRV_MIDI_NOTE_RELEASED) {
     chan->note[i] = SNDRV_MIDI_NOTE_OFF;
     if (ops->note_off)
      ops->note_off(drv, i, 0, chan);
    }
   }
  }
  break;
 case 139:
  break;
 case 129:
  if (value) {

   for (i = 0; i < 128; i++) {
    if (chan->note[i] & SNDRV_MIDI_NOTE_ON)
     chan->note[i] |= SNDRV_MIDI_NOTE_SOSTENUTO;
   }
  } else {

   for (i = 0; i < 128; i++) {
    if (chan->note[i] & SNDRV_MIDI_NOTE_SOSTENUTO) {
     chan->note[i] &= ~SNDRV_MIDI_NOTE_SOSTENUTO;
     if (chan->note[i] & SNDRV_MIDI_NOTE_RELEASED) {
      chan->note[i] = SNDRV_MIDI_NOTE_OFF;
      if (ops->note_off)
       ops->note_off(drv, i, 0, chan);
     }
    }
   }
  }
  break;
 case 142:
  chan->control[144] = 0;

 case 144:
  if (chan->param_type == SNDRV_MIDI_PARAM_TYPE_REGISTERED)
   rpn(ops, drv, chan, chset);
  else
   nrpn(ops, drv, chan, chset);
  break;
 case 138:
 case 137:
  chan->param_type = SNDRV_MIDI_PARAM_TYPE_REGISTERED;
  break;
 case 141:
 case 140:
  chan->param_type = SNDRV_MIDI_PARAM_TYPE_NONREGISTERED;
  break;

 case 153:
  all_sounds_off(ops, drv, chan);
  break;

 case 154:
  all_notes_off(ops, drv, chan);
  break;

 case 143:
  if (chset->midi_mode == SNDRV_MIDI_MODE_XG) {
   if (value == 127)
    chan->drum_channel = 1;
   else
    chan->drum_channel = 0;
  }
  break;
 case 145:
  break;

 case 136:
  snd_midi_reset_controllers(chan);
  break;

 case 130:
 case 146:
 case 147:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 152:
 case 151:
 case 150:
 case 149:
 case 148:
  goto notyet;
 notyet:
 default:
  if (ops->control)
   ops->control(drv, control, chan);
  break;
 }
}
