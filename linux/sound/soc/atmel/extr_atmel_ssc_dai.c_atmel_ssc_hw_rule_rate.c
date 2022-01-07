
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssc_device {int clk_from_rk_pin; } ;
struct snd_ratnum {int den_min; int den_max; int den_step; int num; } ;
struct snd_pcm_hw_rule {int var; struct atmel_ssc_info* private; } ;
struct snd_pcm_hw_params {unsigned int rate_num; unsigned int rate_den; } ;
struct snd_interval {int min; int max; int integer; int openmax; int openmin; } ;
struct atmel_ssc_info {int daifmt; int dir_mask; int mck_rate; struct ssc_device* ssc; } ;


 int EINVAL ;
 int SNDRV_PCM_HW_PARAM_RATE ;



 int SND_SOC_DAIFMT_MASTER_MASK ;
 int SSC_DIR_MASK_CAPTURE ;
 int SSC_DIR_MASK_PLAYBACK ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_ratnum (struct snd_interval*,int,struct snd_ratnum*,unsigned int*,unsigned int*) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;
 int snd_soc_params_to_frame_size (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int atmel_ssc_hw_rule_rate(struct snd_pcm_hw_params *params,
      struct snd_pcm_hw_rule *rule)
{
 struct atmel_ssc_info *ssc_p = rule->private;
 struct ssc_device *ssc = ssc_p->ssc;
 struct snd_interval *i = hw_param_interval(params, rule->var);
 struct snd_interval t;
 struct snd_ratnum r = {
  .den_min = 1,
  .den_max = 4095,
  .den_step = 1,
 };
 unsigned int num = 0, den = 0;
 int frame_size;
 int mck_div = 2;
 int ret;

 frame_size = snd_soc_params_to_frame_size(params);
 if (frame_size < 0)
  return frame_size;

 switch (ssc_p->daifmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 129:
  if ((ssc_p->dir_mask & SSC_DIR_MASK_CAPTURE)
      && ssc->clk_from_rk_pin)




   mck_div = 3;
  break;

 case 130:
  if ((ssc_p->dir_mask & SSC_DIR_MASK_PLAYBACK)
      && !ssc->clk_from_rk_pin)





   mck_div = 6;
  break;
 }

 switch (ssc_p->daifmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 128:
  r.num = ssc_p->mck_rate / mck_div / frame_size;

  ret = snd_interval_ratnum(i, 1, &r, &num, &den);
  if (ret >= 0 && den && rule->var == SNDRV_PCM_HW_PARAM_RATE) {
   params->rate_num = num;
   params->rate_den = den;
  }
  break;

 case 129:
 case 130:
  t.min = 8000;
  t.max = ssc_p->mck_rate / mck_div / frame_size;
  t.openmin = t.openmax = 0;
  t.integer = 0;
  ret = snd_interval_refine(i, &t);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
