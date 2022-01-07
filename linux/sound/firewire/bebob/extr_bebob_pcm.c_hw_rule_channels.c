
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {struct snd_bebob_stream_formation* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int integer; int max; int min; } ;
struct snd_bebob_stream_formation {scalar_t__ pcm; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 unsigned int SND_BEBOB_STRM_FMT_ENTRIES ;
 int UINT_MAX ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params*,int ) ;
 int max (int ,scalar_t__) ;
 int min (int ,scalar_t__) ;
 int * snd_bebob_rate_table ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;
 int snd_interval_test (struct snd_interval const*,int ) ;

__attribute__((used)) static int
hw_rule_channels(struct snd_pcm_hw_params *params, struct snd_pcm_hw_rule *rule)
{
 struct snd_bebob_stream_formation *formations = rule->private;
 struct snd_interval *c =
  hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 const struct snd_interval *r =
  hw_param_interval_c(params, SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval t = {
  .min = UINT_MAX, .max = 0, .integer = 1
 };

 unsigned int i;

 for (i = 0; i < SND_BEBOB_STRM_FMT_ENTRIES; i++) {

  if (formations[i].pcm == 0)
   continue;

  if (!snd_interval_test(r, snd_bebob_rate_table[i]))
   continue;

  t.min = min(t.min, formations[i].pcm);
  t.max = max(t.max, formations[i].pcm);
 }

 return snd_interval_refine(c, &t);
}
