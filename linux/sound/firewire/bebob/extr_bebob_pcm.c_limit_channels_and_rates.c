
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hardware {int rates; void* rate_max; void* rate_min; void* channels_max; void* channels_min; } ;
struct snd_bebob_stream_formation {scalar_t__ pcm; } ;


 unsigned int SND_BEBOB_STRM_FMT_ENTRIES ;
 void* UINT_MAX ;
 void* max (void*,scalar_t__) ;
 void* min (void*,scalar_t__) ;
 scalar_t__* snd_bebob_rate_table ;
 int snd_pcm_rate_to_rate_bit (scalar_t__) ;

__attribute__((used)) static void
limit_channels_and_rates(struct snd_pcm_hardware *hw,
    struct snd_bebob_stream_formation *formations)
{
 unsigned int i;

 hw->channels_min = UINT_MAX;
 hw->channels_max = 0;

 hw->rate_min = UINT_MAX;
 hw->rate_max = 0;
 hw->rates = 0;

 for (i = 0; i < SND_BEBOB_STRM_FMT_ENTRIES; i++) {

  if (formations[i].pcm == 0)
   continue;

  hw->channels_min = min(hw->channels_min, formations[i].pcm);
  hw->channels_max = max(hw->channels_max, formations[i].pcm);

  hw->rate_min = min(hw->rate_min, snd_bebob_rate_table[i]);
  hw->rate_max = max(hw->rate_max, snd_bebob_rate_table[i]);
  hw->rates |= snd_pcm_rate_to_rate_bit(snd_bebob_rate_table[i]);
 }
}
