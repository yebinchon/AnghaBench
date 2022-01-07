
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct arizona {int regmap; } ;
struct TYPE_3__ {int parent; } ;


 int ARIZONA_DVFS_ADSP1_RQ ;
 unsigned int ARIZONA_SYSCLK_FREQ_MASK ;
 unsigned int ARIZONA_SYSCLK_FREQ_SHIFT ;
 int ARIZONA_SYSTEM_CLOCK_1 ;
 int EIO ;


 int arizona_dvfs_down (struct snd_soc_component*,int ) ;
 int arizona_dvfs_up (struct snd_soc_component*,int ) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct arizona* dev_get_drvdata (int ) ;
 int dev_warn (TYPE_1__*,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wm_adsp2_set_dspclk (struct snd_soc_dapm_widget*,unsigned int) ;
 int wm_adsp_early_event (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ;

__attribute__((used)) static int wm5102_adsp_power_ev(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona *arizona = dev_get_drvdata(component->dev->parent);
 unsigned int v = 0;
 int ret;

 switch (event) {
 case 128:
  ret = regmap_read(arizona->regmap, ARIZONA_SYSTEM_CLOCK_1, &v);
  if (ret != 0) {
   dev_err(component->dev,
    "Failed to read SYSCLK state: %d\n", ret);
   return -EIO;
  }

  v = (v & ARIZONA_SYSCLK_FREQ_MASK) >> ARIZONA_SYSCLK_FREQ_SHIFT;

  if (v >= 3) {
   ret = arizona_dvfs_up(component, ARIZONA_DVFS_ADSP1_RQ);
   if (ret) {
    dev_err(component->dev,
     "Failed to raise DVFS: %d\n", ret);
    return ret;
   }
  }

  wm_adsp2_set_dspclk(w, v);
  break;

 case 129:
  ret = arizona_dvfs_down(component, ARIZONA_DVFS_ADSP1_RQ);
  if (ret)
   dev_warn(component->dev,
     "Failed to lower DVFS: %d\n", ret);
  break;

 default:
  break;
 }

 return wm_adsp_early_event(w, kcontrol, event);
}
