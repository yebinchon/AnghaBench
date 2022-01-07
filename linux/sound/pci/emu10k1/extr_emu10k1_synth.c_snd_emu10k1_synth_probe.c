
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {struct snd_emux* driver_data; int card; } ;
struct snd_emux {int max_voices; int num_ports; int pitch_shift; int midi_ports; int midi_devidx; int hwdep_idx; scalar_t__ linear_panning; int memhdr; struct snd_emu10k1* hw; } ;
struct snd_emu10k1_synth_arg {int seq_ports; int max_voices; int index; struct snd_emu10k1* hwptr; } ;
struct snd_emu10k1 {int voice_lock; int get_synth_voice; struct snd_emux* synth; scalar_t__ audigy; int memhdr; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct snd_emu10k1_synth_arg* SNDRV_SEQ_DEVICE_ARGPTR (struct snd_seq_device*) ;
 int snd_emu10k1_ops_setup (struct snd_emux*) ;
 int snd_emu10k1_synth_get_voice ;
 int snd_emux_free (struct snd_emux*) ;
 scalar_t__ snd_emux_new (struct snd_emux**) ;
 scalar_t__ snd_emux_register (struct snd_emux*,int ,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct snd_seq_device* to_seq_dev (struct device*) ;

__attribute__((used)) static int snd_emu10k1_synth_probe(struct device *_dev)
{
 struct snd_seq_device *dev = to_seq_dev(_dev);
 struct snd_emux *emux;
 struct snd_emu10k1 *hw;
 struct snd_emu10k1_synth_arg *arg;
 unsigned long flags;

 arg = SNDRV_SEQ_DEVICE_ARGPTR(dev);
 if (arg == ((void*)0))
  return -EINVAL;

 if (arg->seq_ports <= 0)
  return 0;
 if (arg->max_voices < 1)
  arg->max_voices = 1;
 else if (arg->max_voices > 64)
  arg->max_voices = 64;

 if (snd_emux_new(&emux) < 0)
  return -ENOMEM;

 snd_emu10k1_ops_setup(emux);
 hw = arg->hwptr;
 emux->hw = hw;
 emux->max_voices = arg->max_voices;
 emux->num_ports = arg->seq_ports;
 emux->pitch_shift = -501;
 emux->memhdr = hw->memhdr;

 emux->midi_ports = arg->seq_ports < 2 ? arg->seq_ports : 2;

 emux->midi_devidx = hw->audigy ? 2 : 1;
 emux->linear_panning = 0;
 emux->hwdep_idx = 2;

 if (snd_emux_register(emux, dev->card, arg->index, "Emu10k1") < 0) {
  snd_emux_free(emux);
  return -ENOMEM;
 }

 spin_lock_irqsave(&hw->voice_lock, flags);
 hw->synth = emux;
 hw->get_synth_voice = snd_emu10k1_synth_get_voice;
 spin_unlock_irqrestore(&hw->voice_lock, flags);

 dev->driver_data = emux;

 return 0;
}
