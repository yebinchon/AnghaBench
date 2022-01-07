
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int sst_send_pipe_module_params (struct snd_soc_dapm_widget*,struct snd_kcontrol*) ;

__attribute__((used)) static int sst_generic_modules_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *k, int event)
{
 if (SND_SOC_DAPM_EVENT_ON(event))
  return sst_send_pipe_module_params(w, k);
 return 0;
}
