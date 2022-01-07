
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {scalar_t__ dmic2_clk_pin; int * gpio_config; } ;
struct rt5677_priv {int dsp_pri_lock; int dsp_cmd_lock; TYPE_1__ pdata; int regmap; struct snd_soc_component* component; } ;


 int ARRAY_SIZE (int ) ;
 int RT5677_DIG_MISC ;
 scalar_t__ RT5677_DMIC_CLK2 ;
 int RT5677_GPIO_NUM ;
 int RT5677_IRQ_DEBOUNCE_SEL_MASK ;
 int RT5677_PWR_CORE_ISO ;
 int RT5677_PWR_DSP2 ;
 int RT5677_PWR_SLIM_ISO ;
 int SND_SOC_BIAS_OFF ;
 int mutex_init (int *) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;
 int rt5677_dmic2_clk_1 ;
 int rt5677_dmic2_clk_2 ;
 int rt5677_gpio_config (struct rt5677_priv*,int,int ) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int rt5677_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);
 int i;

 rt5677->component = component;

 if (rt5677->pdata.dmic2_clk_pin == RT5677_DMIC_CLK2) {
  snd_soc_dapm_add_routes(dapm,
   rt5677_dmic2_clk_2,
   ARRAY_SIZE(rt5677_dmic2_clk_2));
 } else {
  snd_soc_dapm_add_routes(dapm,
   rt5677_dmic2_clk_1,
   ARRAY_SIZE(rt5677_dmic2_clk_1));
 }

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_OFF);

 regmap_update_bits(rt5677->regmap, RT5677_DIG_MISC,
   ~RT5677_IRQ_DEBOUNCE_SEL_MASK, 0x0020);
 regmap_write(rt5677->regmap, RT5677_PWR_DSP2,
   RT5677_PWR_SLIM_ISO | RT5677_PWR_CORE_ISO);

 for (i = 0; i < RT5677_GPIO_NUM; i++)
  rt5677_gpio_config(rt5677, i, rt5677->pdata.gpio_config[i]);

 mutex_init(&rt5677->dsp_cmd_lock);
 mutex_init(&rt5677->dsp_pri_lock);

 return 0;
}
