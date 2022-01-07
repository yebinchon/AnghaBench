
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;
 int SND_SOC_DAPM_POST_PMU ;
 scalar_t__ WARN_ON (int) ;
 int udelay (int) ;

__attribute__((used)) static int cp_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 if (WARN_ON(event != SND_SOC_DAPM_POST_PMU))
  return -EINVAL;


 udelay(500);

 return 0;
}
