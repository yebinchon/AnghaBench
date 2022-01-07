
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas5720_data {int fault_check_work; scalar_t__ last_fault; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int SND_SOC_DAPM_POST_PMU ;
 int SND_SOC_DAPM_PRE_PMD ;
 int TAS5720_FAULT_CHECK_INTERVAL ;
 int TAS5720_POWER_CTRL_REG ;
 int TAS5720_SDZ ;
 int cancel_delayed_work_sync (int *) ;
 int dev_err (int ,char*,int) ;
 int msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int schedule_delayed_work (int *,int ) ;
 struct tas5720_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int tas5720_dac_event(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct tas5720_data *tas5720 = snd_soc_component_get_drvdata(component);
 int ret;

 if (event & SND_SOC_DAPM_POST_PMU) {

  ret = snd_soc_component_update_bits(component, TAS5720_POWER_CTRL_REG,
       TAS5720_SDZ, TAS5720_SDZ);
  if (ret < 0) {
   dev_err(component->dev, "error waking component: %d\n", ret);
   return ret;
  }
  msleep(25);


  tas5720->last_fault = 0;
  schedule_delayed_work(&tas5720->fault_check_work,
    msecs_to_jiffies(TAS5720_FAULT_CHECK_INTERVAL));
 } else if (event & SND_SOC_DAPM_PRE_PMD) {

  cancel_delayed_work_sync(&tas5720->fault_check_work);


  ret = snd_soc_component_update_bits(component, TAS5720_POWER_CTRL_REG,
       TAS5720_SDZ, 0);
  if (ret < 0) {
   dev_err(component->dev, "error shutting down component: %d\n",
    ret);
   return ret;
  }
 }

 return 0;
}
