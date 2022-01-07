
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int cmask; int rmask; } ;
typedef int snd_pcm_hw_param_t ;


 scalar_t__ hw_is_interval (int) ;
 scalar_t__ hw_is_mask (int) ;
 int hw_param_interval (struct snd_pcm_hw_params*,int) ;
 int hw_param_mask (struct snd_pcm_hw_params*,int) ;
 int snd_BUG () ;
 int snd_interval_none (int ) ;
 int snd_mask_none (int ) ;

void _snd_pcm_hw_param_setempty(struct snd_pcm_hw_params *params,
    snd_pcm_hw_param_t var)
{
 if (hw_is_mask(var)) {
  snd_mask_none(hw_param_mask(params, var));
  params->cmask |= 1 << var;
  params->rmask |= 1 << var;
 } else if (hw_is_interval(var)) {
  snd_interval_none(hw_param_interval(params, var));
  params->cmask |= 1 << var;
  params->rmask |= 1 << var;
 } else {
  snd_BUG();
 }
}
