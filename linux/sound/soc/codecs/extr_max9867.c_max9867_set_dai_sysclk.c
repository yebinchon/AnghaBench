
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct max9867_priv {unsigned int pclk; unsigned int sysclk; int regmap; int * constraints; } ;


 int EINVAL ;
 int MAX9867_FREQ_MASK ;
 int MAX9867_PSCLK_10_20 ;
 int MAX9867_PSCLK_20_40 ;
 int MAX9867_PSCLK_40_60 ;
 int MAX9867_PSCLK_MASK ;
 int MAX9867_PSCLK_SHIFT ;
 int MAX9867_SYSCLK ;
 int dev_err (int ,char*,unsigned int) ;
 int dev_warn (int ,char*,unsigned int) ;
 int max9867_constraints_44k1 ;
 int max9867_constraints_48k ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct max9867_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max9867_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct max9867_priv *max9867 = snd_soc_component_get_drvdata(component);
 int value = 0;


 if (freq >= 10000000 && freq <= 20000000) {
  value |= MAX9867_PSCLK_10_20;
  max9867->pclk = freq;
 } else if (freq >= 20000000 && freq <= 40000000) {
  value |= MAX9867_PSCLK_20_40;
  max9867->pclk = freq / 2;
 } else if (freq >= 40000000 && freq <= 60000000) {
  value |= MAX9867_PSCLK_40_60;
  max9867->pclk = freq / 4;
 } else {
  dev_err(component->dev,
   "Invalid clock frequency %uHz (required 10-60MHz)\n",
   freq);
  return -EINVAL;
 }
 if (freq % 48000 == 0)
  max9867->constraints = &max9867_constraints_48k;
 else if (freq % 44100 == 0)
  max9867->constraints = &max9867_constraints_44k1;
 else
  dev_warn(component->dev,
    "Unable to set exact rate with %uHz clock frequency\n",
    freq);
 max9867->sysclk = freq;
 value = value << MAX9867_PSCLK_SHIFT;

 value &= ~MAX9867_FREQ_MASK;
 regmap_update_bits(max9867->regmap, MAX9867_SYSCLK,
   MAX9867_PSCLK_MASK, value);
 return 0;
}
