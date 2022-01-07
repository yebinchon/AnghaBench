
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;


 int snd_soc_dapm_set_pin (struct snd_soc_dapm_context*,char const*,int) ;

int snd_soc_dapm_enable_pin_unlocked(struct snd_soc_dapm_context *dapm,
       const char *pin)
{
 return snd_soc_dapm_set_pin(dapm, pin, 1);
}
