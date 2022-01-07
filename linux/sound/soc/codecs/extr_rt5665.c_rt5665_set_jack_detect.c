
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int jd_src; } ;
struct rt5665_priv {struct snd_soc_jack* hs_jack; int regmap; TYPE_1__ pdata; } ;


 int RT5665_GP1_PIN_IRQ ;
 int RT5665_GP1_PIN_MASK ;
 int RT5665_GPIO_CTRL_1 ;
 int RT5665_IRQ_CTRL_1 ;


 int RT5665_PWR_ANLG_2 ;
 int RT5665_PWR_JD1 ;
 int RT5665_RC_CLK_CTRL ;
 int dev_warn (int ,char*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct rt5665_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5665_set_jack_detect(struct snd_soc_component *component,
 struct snd_soc_jack *hs_jack, void *data)
{
 struct rt5665_priv *rt5665 = snd_soc_component_get_drvdata(component);

 switch (rt5665->pdata.jd_src) {
 case 129:
  regmap_update_bits(rt5665->regmap, RT5665_GPIO_CTRL_1,
   RT5665_GP1_PIN_MASK, RT5665_GP1_PIN_IRQ);
  regmap_update_bits(rt5665->regmap, RT5665_RC_CLK_CTRL,
    0xc000, 0xc000);
  regmap_update_bits(rt5665->regmap, RT5665_PWR_ANLG_2,
   RT5665_PWR_JD1, RT5665_PWR_JD1);
  regmap_update_bits(rt5665->regmap, RT5665_IRQ_CTRL_1, 0x8, 0x8);
  break;

 case 128:
  break;

 default:
  dev_warn(component->dev, "Wrong JD source\n");
  break;
 }

 rt5665->hs_jack = hs_jack;

 return 0;
}
