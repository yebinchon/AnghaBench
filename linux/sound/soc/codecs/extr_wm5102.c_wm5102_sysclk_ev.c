
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct regmap {int dummy; } ;
struct reg_default {int def; int reg; } ;
struct arizona {int rev; struct regmap* regmap; } ;
struct TYPE_2__ {int parent; } ;


 int ARRAY_SIZE (struct reg_default*) ;




 int arizona_clk_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ;
 int arizona_dvfs_sysclk_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ;
 struct arizona* dev_get_drvdata (int ) ;
 int regmap_write_async (struct regmap*,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 struct reg_default* wm5102_sysclk_reva_patch ;
 struct reg_default* wm5102_sysclk_revb_patch ;

__attribute__((used)) static int wm5102_sysclk_ev(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona *arizona = dev_get_drvdata(component->dev->parent);
 struct regmap *regmap = arizona->regmap;
 const struct reg_default *patch = ((void*)0);
 int i, patch_size;

 switch (arizona->rev) {
 case 0:
  patch = wm5102_sysclk_reva_patch;
  patch_size = ARRAY_SIZE(wm5102_sysclk_reva_patch);
  break;
 default:
  patch = wm5102_sysclk_revb_patch;
  patch_size = ARRAY_SIZE(wm5102_sysclk_revb_patch);
  break;
 }

 switch (event) {
 case 130:
  if (patch)
   for (i = 0; i < patch_size; i++)
    regmap_write_async(regmap, patch[i].reg,
         patch[i].def);
  break;
 case 129:
  break;
 case 128:
 case 131:
  return arizona_clk_ev(w, kcontrol, event);
 default:
  return 0;
 }

 return arizona_dvfs_sysclk_ev(w, kcontrol, event);
}
