
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hardware {scalar_t__ channels_max; int channels_min; int rates; } ;
struct snd_pcm_runtime {struct snd_pcm_hardware hw; } ;
struct snd_dice {unsigned int** tx_pcm_chs; unsigned int** rx_pcm_chs; } ;
typedef enum snd_dice_rate_mode { ____Placeholder_snd_dice_rate_mode } snd_dice_rate_mode ;
typedef enum amdtp_stream_direction { ____Placeholder_amdtp_stream_direction } amdtp_stream_direction ;


 int AMDTP_IN_STREAM ;
 unsigned int ARRAY_SIZE (unsigned int*) ;
 int UINT_MAX ;
 scalar_t__ max (scalar_t__,unsigned int) ;
 int min (int ,unsigned int) ;
 unsigned int* snd_dice_rates ;
 scalar_t__ snd_dice_stream_get_rate_mode (struct snd_dice*,unsigned int,int*) ;
 int snd_pcm_limit_hw_rates (struct snd_pcm_runtime*) ;
 int snd_pcm_rate_to_rate_bit (unsigned int) ;

__attribute__((used)) static int limit_channels_and_rates(struct snd_dice *dice,
        struct snd_pcm_runtime *runtime,
        enum amdtp_stream_direction dir,
        unsigned int index)
{
 struct snd_pcm_hardware *hw = &runtime->hw;
 unsigned int *pcm_channels;
 unsigned int i;

 if (dir == AMDTP_IN_STREAM)
  pcm_channels = dice->tx_pcm_chs[index];
 else
  pcm_channels = dice->rx_pcm_chs[index];

 hw->channels_min = UINT_MAX;
 hw->channels_max = 0;

 for (i = 0; i < ARRAY_SIZE(snd_dice_rates); ++i) {
  enum snd_dice_rate_mode mode;
  unsigned int rate, channels;

  rate = snd_dice_rates[i];
  if (snd_dice_stream_get_rate_mode(dice, rate, &mode) < 0)
   continue;
  hw->rates |= snd_pcm_rate_to_rate_bit(rate);

  channels = pcm_channels[mode];
  if (channels == 0)
   continue;
  hw->channels_min = min(hw->channels_min, channels);
  hw->channels_max = max(hw->channels_max, channels);
 }

 snd_pcm_limit_hw_rates(runtime);

 return 0;
}
