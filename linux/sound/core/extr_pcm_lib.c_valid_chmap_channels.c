
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_chmap {int max_channels; unsigned int channel_mask; } ;



__attribute__((used)) static bool valid_chmap_channels(const struct snd_pcm_chmap *info, int ch)
{
 if (ch > info->max_channels)
  return 0;
 return !info->channel_mask || (info->channel_mask & (1U << ch));
}
