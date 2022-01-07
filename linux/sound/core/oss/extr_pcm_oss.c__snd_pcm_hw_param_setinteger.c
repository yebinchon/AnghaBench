
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int cmask; int rmask; } ;
typedef int snd_pcm_hw_param_t ;


 int hw_param_interval (struct snd_pcm_hw_params*,int) ;
 int snd_interval_setinteger (int ) ;

__attribute__((used)) static int _snd_pcm_hw_param_setinteger(struct snd_pcm_hw_params *params,
     snd_pcm_hw_param_t var)
{
 int changed;
 changed = snd_interval_setinteger(hw_param_interval(params, var));
 if (changed > 0) {
  params->cmask |= 1 << var;
  params->rmask |= 1 << var;
 }
 return changed;
}
