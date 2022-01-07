
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; int private_free; struct emu10k1x_pcm* private_data; } ;
struct emu10k1x_pcm {struct snd_pcm_substream* substream; struct emu10k1x* emu; } ;
struct emu10k1x {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 struct emu10k1x_pcm* kzalloc (int,int ) ;
 int snd_emu10k1x_capture_hw ;
 int snd_emu10k1x_pcm_free_substream ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 struct emu10k1x* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1x_pcm_open_capture(struct snd_pcm_substream *substream)
{
 struct emu10k1x *chip = snd_pcm_substream_chip(substream);
 struct emu10k1x_pcm *epcm;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 if ((err = snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS)) < 0)
                return err;
 if ((err = snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 64)) < 0)
                return err;

 epcm = kzalloc(sizeof(*epcm), GFP_KERNEL);
 if (epcm == ((void*)0))
  return -ENOMEM;

 epcm->emu = chip;
 epcm->substream = substream;

 runtime->private_data = epcm;
 runtime->private_free = snd_emu10k1x_pcm_free_substream;

 runtime->hw = snd_emu10k1x_capture_hw;

 return 0;
}
