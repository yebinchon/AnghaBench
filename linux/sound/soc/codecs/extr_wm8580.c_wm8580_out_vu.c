
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8580_priv {int regmap; } ;
struct soc_mixer_control {unsigned int reg; unsigned int rreg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int regcache_cache_only (int ,int) ;
 int regmap_update_bits (int ,unsigned int,int,int) ;
 struct wm8580_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int wm8580_out_vu(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm8580_priv *wm8580 = snd_soc_component_get_drvdata(component);
 unsigned int reg = mc->reg;
 unsigned int reg2 = mc->rreg;
 int ret;


 regcache_cache_only(wm8580->regmap, 1);
 regmap_update_bits(wm8580->regmap, reg, 0x100, 0x000);
 regmap_update_bits(wm8580->regmap, reg2, 0x100, 0x000);
 regcache_cache_only(wm8580->regmap, 0);

 ret = snd_soc_put_volsw(kcontrol, ucontrol);
 if (ret < 0)
  return ret;


 snd_soc_component_update_bits(component, reg, 0x100, 0x100);
 snd_soc_component_update_bits(component, reg2, 0x100, 0x100);

 return 0;
}
