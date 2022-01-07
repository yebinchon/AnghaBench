
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct nau8824 {int fs; int regmap; int dev; } ;


 int DMIC_CLK ;
 int NAU8824_CLK_DMIC_SRC_MASK ;
 int NAU8824_CLK_DMIC_SRC_SFT ;
 int NAU8824_REG_CLK_DIVIDER ;
 int dev_dbg (int ,char*,int,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct nau8824* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int dmic_clock_control(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *k, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct nau8824 *nau8824 = snd_soc_component_get_drvdata(component);
 int src;





 for (src = 0; src < 5; src++) {
  if ((0x1 << (8 - src)) * nau8824->fs <= DMIC_CLK)
   break;
 }
 dev_dbg(nau8824->dev, "dmic src %d for mclk %d\n", src, nau8824->fs * 256);
 regmap_update_bits(nau8824->regmap, NAU8824_REG_CLK_DIVIDER,
  NAU8824_CLK_DMIC_SRC_MASK, (src << NAU8824_CLK_DMIC_SRC_SFT));

 return 0;
}
