
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_seq_event {scalar_t__ type; int flags; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct TYPE_2__ {struct snd_rawmidi_substream* output; } ;
struct seq_midisynth {int * parser; TYPE_1__ output_rfile; } ;
typedef int snd_seq_dump_func_t ;
typedef int msg ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int SNDRV_SEQ_EVENT_LENGTH_MASK ;
 int SNDRV_SEQ_EVENT_LENGTH_VARIABLE ;
 scalar_t__ SNDRV_SEQ_EVENT_SYSEX ;
 scalar_t__ dump_midi (struct snd_rawmidi_substream*,unsigned char*,int) ;
 int pr_debug (char*,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_midi_event_decode (int *,unsigned char*,int,struct snd_seq_event*) ;
 int snd_midi_event_reset_decode (int *) ;
 int snd_seq_dump_var_event (struct snd_seq_event*,int ,struct snd_rawmidi_substream*) ;

__attribute__((used)) static int event_process_midi(struct snd_seq_event *ev, int direct,
         void *private_data, int atomic, int hop)
{
 struct seq_midisynth *msynth = private_data;
 unsigned char msg[10];
 struct snd_rawmidi_substream *substream;
 int len;

 if (snd_BUG_ON(!msynth))
  return -EINVAL;
 substream = msynth->output_rfile.output;
 if (substream == ((void*)0))
  return -ENODEV;
 if (ev->type == SNDRV_SEQ_EVENT_SYSEX) {
  if ((ev->flags & SNDRV_SEQ_EVENT_LENGTH_MASK) != SNDRV_SEQ_EVENT_LENGTH_VARIABLE) {

   pr_debug("ALSA: seq_midi: invalid sysex event flags = 0x%x\n", ev->flags);
   return 0;
  }
  snd_seq_dump_var_event(ev, (snd_seq_dump_func_t)dump_midi, substream);
  snd_midi_event_reset_decode(msynth->parser);
 } else {
  if (msynth->parser == ((void*)0))
   return -EIO;
  len = snd_midi_event_decode(msynth->parser, msg, sizeof(msg), ev);
  if (len < 0)
   return 0;
  if (dump_midi(substream, msg, len) < 0)
   snd_midi_event_reset_decode(msynth->parser);
 }
 return 0;
}
