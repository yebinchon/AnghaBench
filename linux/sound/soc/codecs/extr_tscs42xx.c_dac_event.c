
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs42xx {int coeff_ram_synced; int coeff_ram_lock; int coeff_ram; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int COEFF_RAM_COEFF_COUNT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tscs42xx* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int write_coeff_ram (struct snd_soc_component*,int ,int,int ) ;

__attribute__((used)) static int dac_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);
 struct tscs42xx *tscs42xx = snd_soc_component_get_drvdata(component);
 int ret;

 mutex_lock(&tscs42xx->coeff_ram_lock);

 if (!tscs42xx->coeff_ram_synced) {
  ret = write_coeff_ram(component, tscs42xx->coeff_ram, 0x00,
   COEFF_RAM_COEFF_COUNT);
  if (ret < 0)
   goto exit;
  tscs42xx->coeff_ram_synced = 1;
 }

 ret = 0;
exit:
 mutex_unlock(&tscs42xx->coeff_ram_lock);

 return ret;
}
