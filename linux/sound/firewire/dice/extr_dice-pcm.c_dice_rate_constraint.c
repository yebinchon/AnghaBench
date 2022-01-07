
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* pcm; struct snd_dice* private_data; } ;
struct snd_pcm_hw_rule {struct snd_pcm_substream* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int integer; int max; int min; } ;
struct snd_dice {unsigned int** tx_pcm_chs; unsigned int** rx_pcm_chs; } ;
typedef enum snd_dice_rate_mode { ____Placeholder_snd_dice_rate_mode } snd_dice_rate_mode ;
struct TYPE_2__ {unsigned int device; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int UINT_MAX ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params*,int ) ;
 int max (int ,unsigned int) ;
 int min (int ,unsigned int) ;
 unsigned int* snd_dice_rates ;
 scalar_t__ snd_dice_stream_get_rate_mode (struct snd_dice*,unsigned int,int*) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;
 int snd_interval_test (struct snd_interval const*,unsigned int) ;

__attribute__((used)) static int dice_rate_constraint(struct snd_pcm_hw_params *params,
    struct snd_pcm_hw_rule *rule)
{
 struct snd_pcm_substream *substream = rule->private;
 struct snd_dice *dice = substream->private_data;
 unsigned int index = substream->pcm->device;

 const struct snd_interval *c =
  hw_param_interval_c(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_interval *r =
  hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval rates = {
  .min = UINT_MAX, .max = 0, .integer = 1
 };
 unsigned int *pcm_channels;
 enum snd_dice_rate_mode mode;
 unsigned int i, rate;

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
  pcm_channels = dice->tx_pcm_chs[index];
 else
  pcm_channels = dice->rx_pcm_chs[index];

 for (i = 0; i < ARRAY_SIZE(snd_dice_rates); ++i) {
  rate = snd_dice_rates[i];
  if (snd_dice_stream_get_rate_mode(dice, rate, &mode) < 0)
   continue;

  if (!snd_interval_test(c, pcm_channels[mode]))
   continue;

  rates.min = min(rates.min, rate);
  rates.max = max(rates.max, rate);
 }

 return snd_interval_refine(r, &rates);
}
