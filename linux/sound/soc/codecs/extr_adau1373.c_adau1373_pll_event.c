
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {char* name; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct adau1373 {int regmap; } ;


 int ADAU1373_PLL_CTRL6 (unsigned int) ;
 unsigned int ADAU1373_PLL_CTRL6_PLL_EN ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int mdelay (int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct adau1373* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int adau1373_pll_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct adau1373 *adau1373 = snd_soc_component_get_drvdata(component);
 unsigned int pll_id = w->name[3] - '1';
 unsigned int val;

 if (SND_SOC_DAPM_EVENT_ON(event))
  val = ADAU1373_PLL_CTRL6_PLL_EN;
 else
  val = 0;

 regmap_update_bits(adau1373->regmap, ADAU1373_PLL_CTRL6(pll_id),
  ADAU1373_PLL_CTRL6_PLL_EN, val);

 if (SND_SOC_DAPM_EVENT_ON(event))
  mdelay(5);

 return 0;
}
