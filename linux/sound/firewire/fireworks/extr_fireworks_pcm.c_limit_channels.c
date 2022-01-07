
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hardware {int channels_max; int channels_min; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int UINT_MAX ;
 int freq_table ;
 unsigned int get_multiplier_mode_with_index (unsigned int) ;
 int max (int ,unsigned int) ;
 int min (int ,unsigned int) ;

__attribute__((used)) static void
limit_channels(struct snd_pcm_hardware *hw, unsigned int *pcm_channels)
{
 unsigned int i, mode;

 hw->channels_min = UINT_MAX;
 hw->channels_max = 0;

 for (i = 0; i < ARRAY_SIZE(freq_table); i++) {
  mode = get_multiplier_mode_with_index(i);
  if (pcm_channels[mode] == 0)
   continue;

  hw->channels_min = min(hw->channels_min, pcm_channels[mode]);
  hw->channels_max = max(hw->channels_max, pcm_channels[mode]);
 }
}
