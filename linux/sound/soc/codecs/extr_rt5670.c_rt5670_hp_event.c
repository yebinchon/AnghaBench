
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5670_priv {int regmap; } ;


 scalar_t__ RT5670_DEPOP_M1 ;
 scalar_t__ RT5670_DEPOP_M3 ;
 int RT5670_GEN_CTRL2 ;
 int RT5670_HP_VOL ;
 int RT5670_L_MUTE ;
 scalar_t__ RT5670_MAMP_INT_REG2 ;
 scalar_t__ RT5670_PR_BASE ;
 int RT5670_R_MUTE ;


 int mdelay (int) ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,scalar_t__,int) ;
 struct rt5670_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5670_hp_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5670_priv *rt5670 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 129:

  regmap_write(rt5670->regmap, RT5670_PR_BASE +
    RT5670_MAMP_INT_REG2, 0xb400);
  regmap_write(rt5670->regmap, RT5670_DEPOP_M3, 0x0772);
  regmap_write(rt5670->regmap, RT5670_DEPOP_M1, 0x805d);
  regmap_write(rt5670->regmap, RT5670_DEPOP_M1, 0x831d);
  regmap_update_bits(rt5670->regmap, RT5670_GEN_CTRL2,
    0x0300, 0x0300);
  regmap_update_bits(rt5670->regmap, RT5670_HP_VOL,
   RT5670_L_MUTE | RT5670_R_MUTE, 0);
  msleep(80);
  regmap_write(rt5670->regmap, RT5670_DEPOP_M1, 0x8019);
  break;

 case 128:

  regmap_write(rt5670->regmap, RT5670_PR_BASE +
    RT5670_MAMP_INT_REG2, 0xb400);
  regmap_write(rt5670->regmap, RT5670_DEPOP_M3, 0x0772);
  regmap_write(rt5670->regmap, RT5670_DEPOP_M1, 0x803d);
  mdelay(10);
  regmap_write(rt5670->regmap, RT5670_DEPOP_M1, 0x831d);
  mdelay(10);
  regmap_update_bits(rt5670->regmap, RT5670_HP_VOL,
       RT5670_L_MUTE | RT5670_R_MUTE,
       RT5670_L_MUTE | RT5670_R_MUTE);
  msleep(20);
  regmap_update_bits(rt5670->regmap,
       RT5670_GEN_CTRL2, 0x0300, 0x0);
  regmap_write(rt5670->regmap, RT5670_DEPOP_M1, 0x8019);
  regmap_write(rt5670->regmap, RT5670_DEPOP_M3, 0x0707);
  regmap_write(rt5670->regmap, RT5670_PR_BASE +
    RT5670_MAMP_INT_REG2, 0xfc00);
  break;

 default:
  return 0;
 }

 return 0;
}
