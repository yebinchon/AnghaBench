
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_seq_port_subscribe {int dummy; } ;
struct TYPE_2__ {int output; } ;
struct seq_midisynth {TYPE_1__ output_rfile; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_rawmidi_drain_output (int ) ;
 int snd_rawmidi_kernel_release (TYPE_1__*) ;

__attribute__((used)) static int midisynth_unuse(void *private_data, struct snd_seq_port_subscribe *info)
{
 struct seq_midisynth *msynth = private_data;

 if (snd_BUG_ON(!msynth->output_rfile.output))
  return -EINVAL;
 snd_rawmidi_drain_output(msynth->output_rfile.output);
 return snd_rawmidi_kernel_release(&msynth->output_rfile);
}
