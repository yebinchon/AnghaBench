
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_seq_port_subscribe {int dummy; } ;
struct snd_rawmidi_runtime {struct seq_midisynth* private_data; int event; } ;
struct snd_rawmidi_params {int avail_min; int buffer_size; } ;
struct TYPE_5__ {TYPE_2__* input; } ;
struct seq_midisynth {TYPE_1__ input_rfile; int parser; int subdevice; int device; int card; } ;
typedef int params ;
struct TYPE_6__ {struct snd_rawmidi_runtime* runtime; } ;


 int SNDRV_RAWMIDI_LFLG_INPUT ;
 int input_buffer_size ;
 int memset (struct snd_rawmidi_params*,int ,int) ;
 int pr_debug (char*) ;
 int snd_midi_event_reset_encode (int ) ;
 int snd_midi_input_event ;
 int snd_rawmidi_input_params (TYPE_2__*,struct snd_rawmidi_params*) ;
 int snd_rawmidi_kernel_open (int ,int ,int ,int ,TYPE_1__*) ;
 int snd_rawmidi_kernel_read (TYPE_2__*,int *,int ) ;
 int snd_rawmidi_kernel_release (TYPE_1__*) ;

__attribute__((used)) static int midisynth_subscribe(void *private_data, struct snd_seq_port_subscribe *info)
{
 int err;
 struct seq_midisynth *msynth = private_data;
 struct snd_rawmidi_runtime *runtime;
 struct snd_rawmidi_params params;


 if ((err = snd_rawmidi_kernel_open(msynth->card, msynth->device,
        msynth->subdevice,
        SNDRV_RAWMIDI_LFLG_INPUT,
        &msynth->input_rfile)) < 0) {
  pr_debug("ALSA: seq_midi: midi input open failed!!!\n");
  return err;
 }
 runtime = msynth->input_rfile.input->runtime;
 memset(&params, 0, sizeof(params));
 params.avail_min = 1;
 params.buffer_size = input_buffer_size;
 if ((err = snd_rawmidi_input_params(msynth->input_rfile.input, &params)) < 0) {
  snd_rawmidi_kernel_release(&msynth->input_rfile);
  return err;
 }
 snd_midi_event_reset_encode(msynth->parser);
 runtime->event = snd_midi_input_event;
 runtime->private_data = msynth;
 snd_rawmidi_kernel_read(msynth->input_rfile.input, ((void*)0), 0);
 return 0;
}
