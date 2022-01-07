
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_port_subscribe {int dummy; } ;
struct snd_rawmidi_params {int avail_min; int no_active_sensing; int buffer_size; } ;
struct TYPE_3__ {int output; } ;
struct seq_midisynth {int parser; TYPE_1__ output_rfile; int subdevice; int device; int card; } ;
typedef int params ;


 int SNDRV_RAWMIDI_LFLG_OUTPUT ;
 int memset (struct snd_rawmidi_params*,int ,int) ;
 int output_buffer_size ;
 int pr_debug (char*) ;
 int snd_midi_event_reset_decode (int ) ;
 int snd_rawmidi_kernel_open (int ,int ,int ,int ,TYPE_1__*) ;
 int snd_rawmidi_kernel_release (TYPE_1__*) ;
 int snd_rawmidi_output_params (int ,struct snd_rawmidi_params*) ;

__attribute__((used)) static int midisynth_use(void *private_data, struct snd_seq_port_subscribe *info)
{
 int err;
 struct seq_midisynth *msynth = private_data;
 struct snd_rawmidi_params params;


 if ((err = snd_rawmidi_kernel_open(msynth->card, msynth->device,
        msynth->subdevice,
        SNDRV_RAWMIDI_LFLG_OUTPUT,
        &msynth->output_rfile)) < 0) {
  pr_debug("ALSA: seq_midi: midi output open failed!!!\n");
  return err;
 }
 memset(&params, 0, sizeof(params));
 params.avail_min = 1;
 params.buffer_size = output_buffer_size;
 params.no_active_sensing = 1;
 if ((err = snd_rawmidi_output_params(msynth->output_rfile.output, &params)) < 0) {
  snd_rawmidi_kernel_release(&msynth->output_rfile);
  return err;
 }
 snd_midi_event_reset_decode(msynth->parser);
 return 0;
}
