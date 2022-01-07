
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int channels_max; int formats; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct intel8x0 {scalar_t__ smp20bit; scalar_t__ dra; scalar_t__ multi4; scalar_t__ multi6; scalar_t__ multi8; int * ichd; } ;


 size_t ICHD_PCMOUT ;
 int SNDRV_PCM_FMTBIT_S32_LE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int hw_constraints_channels4 ;
 int hw_constraints_channels6 ;
 int hw_constraints_channels8 ;
 int snd_ac97_pcm_double_rate_rules (struct snd_pcm_runtime*) ;
 int snd_intel8x0_pcm_open (struct snd_pcm_substream*,int *) ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 struct intel8x0* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_intel8x0_playback_open(struct snd_pcm_substream *substream)
{
 struct intel8x0 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 err = snd_intel8x0_pcm_open(substream, &chip->ichd[ICHD_PCMOUT]);
 if (err < 0)
  return err;

 if (chip->multi8) {
  runtime->hw.channels_max = 8;
  snd_pcm_hw_constraint_list(runtime, 0,
      SNDRV_PCM_HW_PARAM_CHANNELS,
      &hw_constraints_channels8);
 } else if (chip->multi6) {
  runtime->hw.channels_max = 6;
  snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
        &hw_constraints_channels6);
 } else if (chip->multi4) {
  runtime->hw.channels_max = 4;
  snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
        &hw_constraints_channels4);
 }
 if (chip->dra) {
  snd_ac97_pcm_double_rate_rules(runtime);
 }
 if (chip->smp20bit) {
  runtime->hw.formats |= SNDRV_PCM_FMTBIT_S32_LE;
  snd_pcm_hw_constraint_msbits(runtime, 0, 32, 20);
 }
 return 0;
}
