
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_pcm_hw_rule {int ** private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_oxfw_stream_formation {int rate; int pcm; } ;
struct snd_interval {int integer; int max; int min; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SND_OXFW_STREAM_FORMAT_ENTRIES ;
 int UINT_MAX ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params*,int ) ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;
 int snd_interval_test (struct snd_interval const*,int ) ;
 int snd_oxfw_stream_parse_format (int *,struct snd_oxfw_stream_formation*) ;

__attribute__((used)) static int hw_rule_rate(struct snd_pcm_hw_params *params,
   struct snd_pcm_hw_rule *rule)
{
 u8 **formats = rule->private;
 struct snd_interval *r =
  hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);
 const struct snd_interval *c =
  hw_param_interval_c(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_interval t = {
  .min = UINT_MAX, .max = 0, .integer = 1
 };
 struct snd_oxfw_stream_formation formation;
 int i, err;

 for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
  if (formats[i] == ((void*)0))
   continue;

  err = snd_oxfw_stream_parse_format(formats[i], &formation);
  if (err < 0)
   continue;
  if (!snd_interval_test(c, formation.pcm))
   continue;

  t.min = min(t.min, formation.rate);
  t.max = max(t.max, formation.rate);

 }
 return snd_interval_refine(r, &t);
}
