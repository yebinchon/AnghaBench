
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {struct snd_motu_packet_format* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_motu_packet_format {unsigned int* fixed_part_pcm_chunks; unsigned int* differed_part_pcm_chunks; } ;
struct snd_interval {int integer; int max; int min; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int UINT_MAX ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params*,int ) ;
 int max (int ,unsigned int) ;
 int min (int ,unsigned int) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;
 int snd_interval_test (struct snd_interval const*,unsigned int) ;
 unsigned int* snd_motu_clock_rates ;

__attribute__((used)) static int motu_channels_constraint(struct snd_pcm_hw_params *params,
        struct snd_pcm_hw_rule *rule)
{
 struct snd_motu_packet_format *formats = rule->private;

 const struct snd_interval *r =
  hw_param_interval_c(params, SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval *c =
  hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_interval channels = {
  .min = UINT_MAX, .max = 0, .integer = 1
 };
 unsigned int i, pcm_channels, rate, mode;

 for (i = 0; i < ARRAY_SIZE(snd_motu_clock_rates); ++i) {
  rate = snd_motu_clock_rates[i];
  mode = i / 2;

  if (!snd_interval_test(r, rate))
   continue;

  pcm_channels = formats->fixed_part_pcm_chunks[mode] +
          formats->differed_part_pcm_chunks[mode];
  channels.min = min(channels.min, pcm_channels);
  channels.max = max(channels.max, pcm_channels);
 }

 return snd_interval_refine(c, &channels);
}
