
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_constraint_list {unsigned int const* list; int count; scalar_t__ mask; } ;
struct ak4613_priv {unsigned int const sysclk; struct snd_pcm_hw_constraint_list constraint; } ;


 int ARRAY_SIZE (unsigned int const*) ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,struct snd_pcm_hw_constraint_list*) ;

__attribute__((used)) static void ak4613_hw_constraints(struct ak4613_priv *priv,
      struct snd_pcm_runtime *runtime)
{
 static const unsigned int ak4613_rates[] = {
   32000,
   44100,
   48000,
   64000,
   88200,
   96000,
  176400,
  192000,
 };
 struct snd_pcm_hw_constraint_list *constraint = &priv->constraint;
 unsigned int fs;
 int i;

 constraint->list = ak4613_rates;
 constraint->mask = 0;
 constraint->count = 0;
 for (i = 0; i < ARRAY_SIZE(ak4613_rates); i++) {

  fs = (ak4613_rates[i] <= 96000) ? 256 : 128;

  if (priv->sysclk >= ak4613_rates[i] * fs)
   constraint->count = i + 1;
 }

 snd_pcm_hw_constraint_list(runtime, 0,
    SNDRV_PCM_HW_PARAM_RATE, constraint);
}
