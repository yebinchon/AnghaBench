
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sysexbuf ;
struct TYPE_6__ {int param; int value; } ;
struct TYPE_4__ {int channel; scalar_t__ velocity; int note; } ;
struct TYPE_5__ {TYPE_3__ control; TYPE_1__ note; } ;
struct snd_seq_event {int type; int flags; TYPE_2__ data; } ;
struct snd_midi_op {int (* control ) (void*,int ,struct snd_midi_channel*) ;int (* key_press ) (void*,size_t,scalar_t__,struct snd_midi_channel*) ;int (* note_off ) (void*,size_t,int ,struct snd_midi_channel*) ;int (* note_on ) (void*,size_t,scalar_t__,struct snd_midi_channel*) ;} ;
struct snd_midi_channel_set {int max_channels; void* private_data; struct snd_midi_channel* channels; } ;
struct snd_midi_channel {int* note; int midi_program; int midi_pitchbend; int midi_pressure; int* control; int param_type; } ;


 int MIDI_CTL_CHAN_PRESSURE ;
 size_t MIDI_CTL_LSB_DATA_ENTRY ;
 size_t MIDI_CTL_MSB_DATA_ENTRY ;
 size_t MIDI_CTL_NONREG_PARM_NUM_LSB ;
 size_t MIDI_CTL_NONREG_PARM_NUM_MSB ;
 int MIDI_CTL_PITCHBEND ;
 size_t MIDI_CTL_REGIST_PARM_NUM_LSB ;
 size_t MIDI_CTL_REGIST_PARM_NUM_MSB ;
 int SNDRV_MIDI_NOTE_ON ;
 int SNDRV_MIDI_PARAM_TYPE_NONREGISTERED ;
 int SNDRV_MIDI_PARAM_TYPE_REGISTERED ;
 int SNDRV_SEQ_EVENT_LENGTH_MASK ;
 int SNDRV_SEQ_EVENT_LENGTH_VARIABLE ;

 int SNDRV_SEQ_EVENT_NOTE ;
 int do_control (struct snd_midi_op*,void*,struct snd_midi_channel_set*,struct snd_midi_channel*,int,int) ;
 int note_off (struct snd_midi_op*,void*,struct snd_midi_channel*,size_t,scalar_t__) ;
 int nrpn (struct snd_midi_op*,void*,struct snd_midi_channel*,struct snd_midi_channel_set*) ;
 int pr_debug (char*,...) ;
 int rpn (struct snd_midi_op*,void*,struct snd_midi_channel*,struct snd_midi_channel_set*) ;
 scalar_t__ snd_seq_ev_is_channel_type (struct snd_seq_event*) ;
 int snd_seq_expand_var_event (struct snd_seq_event*,int,unsigned char*,int,int ) ;
 int stub1 (void*,size_t,int ,struct snd_midi_channel*) ;
 int stub2 (void*,size_t,scalar_t__,struct snd_midi_channel*) ;
 int stub3 (void*,size_t,scalar_t__,struct snd_midi_channel*) ;
 int stub4 (void*,int ,struct snd_midi_channel*) ;
 int stub5 (void*,int ,struct snd_midi_channel*) ;
 int sysex (struct snd_midi_op*,void*,unsigned char*,int,struct snd_midi_channel_set*) ;

void
snd_midi_process_event(struct snd_midi_op *ops,
         struct snd_seq_event *ev,
         struct snd_midi_channel_set *chanset)
{
 struct snd_midi_channel *chan;
 void *drv;
 int dest_channel = 0;

 if (ev == ((void*)0) || chanset == ((void*)0)) {
  pr_debug("ALSA: seq_midi_emul: ev or chanbase NULL (snd_midi_process_event)\n");
  return;
 }
 if (chanset->channels == ((void*)0))
  return;

 if (snd_seq_ev_is_channel_type(ev)) {
  dest_channel = ev->data.note.channel;
  if (dest_channel >= chanset->max_channels) {
   pr_debug("ALSA: seq_midi_emul: dest channel is %d, max is %d\n",
       dest_channel, chanset->max_channels);
   return;
  }
 }

 chan = chanset->channels + dest_channel;
 drv = chanset->private_data;


 if (ev->type == SNDRV_SEQ_EVENT_NOTE)
  return;



 if (ev->type == 143 && ev->data.note.velocity == 0)
  ev->type = 144;


 if (ev->type == 143 ||
     ev->type == 144 ||
     ev->type == 147) {
  if (ev->data.note.note >= 128)
   return;
 }

 switch (ev->type) {
 case 143:
  if (chan->note[ev->data.note.note] & SNDRV_MIDI_NOTE_ON) {
   if (ops->note_off)
    ops->note_off(drv, ev->data.note.note, 0, chan);
  }
  chan->note[ev->data.note.note] = SNDRV_MIDI_NOTE_ON;
  if (ops->note_on)
   ops->note_on(drv, ev->data.note.note, ev->data.note.velocity, chan);
  break;
 case 144:
  if (! (chan->note[ev->data.note.note] & SNDRV_MIDI_NOTE_ON))
   break;
  if (ops->note_off)
   note_off(ops, drv, chan, ev->data.note.note, ev->data.note.velocity);
  break;
 case 147:
  if (ops->key_press)
   ops->key_press(drv, ev->data.note.note, ev->data.note.velocity, chan);
  break;
 case 149:
  do_control(ops, drv, chanset, chan,
      ev->data.control.param, ev->data.control.value);
  break;
 case 142:
  chan->midi_program = ev->data.control.value;
  break;
 case 141:
  chan->midi_pitchbend = ev->data.control.value;
  if (ops->control)
   ops->control(drv, MIDI_CTL_PITCHBEND, chan);
  break;
 case 156:
  chan->midi_pressure = ev->data.control.value;
  if (ops->control)
   ops->control(drv, MIDI_CTL_CHAN_PRESSURE, chan);
  break;
 case 150:

  if (ev->data.control.param < 32) {

   chan->control[ev->data.control.param + 32] =
    ev->data.control.value & 0x7f;
   do_control(ops, drv, chanset, chan,
       ev->data.control.param,
       ((ev->data.control.value>>7) & 0x7f));
  } else
   do_control(ops, drv, chanset, chan,
       ev->data.control.param,
       ev->data.control.value);
  break;
 case 145:

  chan->param_type = SNDRV_MIDI_PARAM_TYPE_NONREGISTERED;
  chan->control[MIDI_CTL_MSB_DATA_ENTRY]
   = (ev->data.control.value >> 7) & 0x7f;
  chan->control[MIDI_CTL_LSB_DATA_ENTRY]
   = ev->data.control.value & 0x7f;
  chan->control[MIDI_CTL_NONREG_PARM_NUM_MSB]
   = (ev->data.control.param >> 7) & 0x7f;
  chan->control[MIDI_CTL_NONREG_PARM_NUM_LSB]
   = ev->data.control.param & 0x7f;
  nrpn(ops, drv, chan, chanset);
  break;
 case 136:

  chan->param_type = SNDRV_MIDI_PARAM_TYPE_REGISTERED;
  chan->control[MIDI_CTL_MSB_DATA_ENTRY]
   = (ev->data.control.value >> 7) & 0x7f;
  chan->control[MIDI_CTL_LSB_DATA_ENTRY]
   = ev->data.control.value & 0x7f;
  chan->control[MIDI_CTL_REGIST_PARM_NUM_MSB]
   = (ev->data.control.param >> 7) & 0x7f;
  chan->control[MIDI_CTL_REGIST_PARM_NUM_LSB]
   = ev->data.control.param & 0x7f;
  rpn(ops, drv, chan, chanset);
  break;
 case 130:
  if ((ev->flags & SNDRV_SEQ_EVENT_LENGTH_MASK) == SNDRV_SEQ_EVENT_LENGTH_VARIABLE) {
   unsigned char sysexbuf[64];
   int len;
   len = snd_seq_expand_var_event(ev, sizeof(sysexbuf), sysexbuf, 1, 0);
   if (len > 0)
    sysex(ops, drv, sysexbuf, len, chanset);
  }
  break;
 case 134:
 case 133:
 case 152:
 case 132:
 case 151:
 case 131:
 case 137:
 case 129:
 case 128:
 case 146:
  goto not_yet;
 case 135:
  break;
 case 153:
 case 154:
 case 155:
 case 138:
 case 139:
 case 140:
 case 148:
 not_yet:
 default:

  break;
 }
}
