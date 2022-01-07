
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_pcm_hardware {int rates; void* rate_max; void* rate_min; void* channels_max; void* channels_min; } ;
struct snd_oxfw_stream_formation {int rate; int pcm; } ;


 int SND_OXFW_STREAM_FORMAT_ENTRIES ;
 void* UINT_MAX ;
 void* max (void*,int ) ;
 void* min (void*,int ) ;
 int snd_oxfw_stream_parse_format (int *,struct snd_oxfw_stream_formation*) ;
 int snd_pcm_rate_to_rate_bit (int ) ;

__attribute__((used)) static void limit_channels_and_rates(struct snd_pcm_hardware *hw, u8 **formats)
{
 struct snd_oxfw_stream_formation formation;
 int i, err;

 hw->channels_min = UINT_MAX;
 hw->channels_max = 0;

 hw->rate_min = UINT_MAX;
 hw->rate_max = 0;
 hw->rates = 0;

 for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
  if (formats[i] == ((void*)0))
   break;

  err = snd_oxfw_stream_parse_format(formats[i], &formation);
  if (err < 0)
   continue;

  hw->channels_min = min(hw->channels_min, formation.pcm);
  hw->channels_max = max(hw->channels_max, formation.pcm);

  hw->rate_min = min(hw->rate_min, formation.rate);
  hw->rate_max = max(hw->rate_max, formation.rate);
  hw->rates |= snd_pcm_rate_to_rate_bit(formation.rate);
 }
}
