
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int jd_src; } ;
struct rt5682_priv {int regmap; int jack_detect_work; TYPE_1__ pdata; struct snd_soc_jack* hs_jack; } ;


 int RT5682_CBJ_CTRL_1 ;
 int RT5682_CBJ_CTRL_2 ;
 int RT5682_CBJ_CTRL_3 ;
 int RT5682_CBJ_IN_BUF_EN ;
 int RT5682_EXT_JD_SRC ;
 int RT5682_EXT_JD_SRC_MANUAL ;
 int RT5682_GP1_PIN_IRQ ;
 int RT5682_GP1_PIN_MASK ;
 int RT5682_GPIO_CTRL_1 ;
 int RT5682_IRQ_CTRL_2 ;

 int RT5682_JD1_DIS ;
 int RT5682_JD1_EN ;
 int RT5682_JD1_EN_MASK ;
 int RT5682_JD1_POL_MASK ;
 int RT5682_JD1_POL_NOR ;

 int RT5682_POW_ANA ;
 int RT5682_POW_IRQ ;
 int RT5682_POW_JDH ;
 int RT5682_POW_JDL ;
 int RT5682_PWR_ANLG_2 ;
 int RT5682_PWR_JDH ;
 int RT5682_PWR_JDL ;
 int RT5682_RC_CLK_CTRL ;
 int RT5682_SAR_IL_CMD_1 ;
 int RT5682_SAR_POW_EN ;
 int RT5682_SAR_POW_MASK ;
 int dev_warn (int ,char*) ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct rt5682_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int system_power_efficient_wq ;

__attribute__((used)) static int rt5682_set_jack_detect(struct snd_soc_component *component,
 struct snd_soc_jack *hs_jack, void *data)
{
 struct rt5682_priv *rt5682 = snd_soc_component_get_drvdata(component);

 rt5682->hs_jack = hs_jack;

 if (!hs_jack) {
  regmap_update_bits(rt5682->regmap, RT5682_IRQ_CTRL_2,
       RT5682_JD1_EN_MASK, RT5682_JD1_DIS);
  regmap_update_bits(rt5682->regmap, RT5682_RC_CLK_CTRL,
       RT5682_POW_JDH | RT5682_POW_JDL, 0);
  return 0;
 }

 switch (rt5682->pdata.jd_src) {
 case 129:
  snd_soc_component_update_bits(component, RT5682_CBJ_CTRL_2,
   RT5682_EXT_JD_SRC, RT5682_EXT_JD_SRC_MANUAL);
  snd_soc_component_write(component, RT5682_CBJ_CTRL_1, 0xd042);
  snd_soc_component_update_bits(component, RT5682_CBJ_CTRL_3,
   RT5682_CBJ_IN_BUF_EN, RT5682_CBJ_IN_BUF_EN);
  snd_soc_component_update_bits(component, RT5682_SAR_IL_CMD_1,
   RT5682_SAR_POW_MASK, RT5682_SAR_POW_EN);
  regmap_update_bits(rt5682->regmap, RT5682_GPIO_CTRL_1,
   RT5682_GP1_PIN_MASK, RT5682_GP1_PIN_IRQ);
  regmap_update_bits(rt5682->regmap, RT5682_RC_CLK_CTRL,
    RT5682_POW_IRQ | RT5682_POW_JDH |
    RT5682_POW_ANA, RT5682_POW_IRQ |
    RT5682_POW_JDH | RT5682_POW_ANA);
  regmap_update_bits(rt5682->regmap, RT5682_PWR_ANLG_2,
   RT5682_PWR_JDH | RT5682_PWR_JDL,
   RT5682_PWR_JDH | RT5682_PWR_JDL);
  regmap_update_bits(rt5682->regmap, RT5682_IRQ_CTRL_2,
   RT5682_JD1_EN_MASK | RT5682_JD1_POL_MASK,
   RT5682_JD1_EN | RT5682_JD1_POL_NOR);
  mod_delayed_work(system_power_efficient_wq,
      &rt5682->jack_detect_work, msecs_to_jiffies(250));
  break;

 case 128:
  regmap_update_bits(rt5682->regmap, RT5682_IRQ_CTRL_2,
   RT5682_JD1_EN_MASK, RT5682_JD1_DIS);
  regmap_update_bits(rt5682->regmap, RT5682_RC_CLK_CTRL,
    RT5682_POW_JDH | RT5682_POW_JDL, 0);
  break;

 default:
  dev_warn(component->dev, "Wrong JD source\n");
  break;
 }

 return 0;
}
