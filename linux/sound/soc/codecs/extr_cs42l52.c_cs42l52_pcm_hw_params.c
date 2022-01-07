
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs42l52_private {int sysclk; } ;
struct TYPE_2__ {int speed; int group; int videoclk; int ratio; int mclkdiv2; int mclk; } ;


 int CLK_27M_MCLK_SHIFT ;
 int CLK_32K_SR_SHIFT ;
 int CLK_RATIO_SHIFT ;
 int CLK_SPEED_SHIFT ;
 int CS42L52_CLK_CTL ;
 int EINVAL ;
 TYPE_1__* clk_map_table ;
 int cs42l52_get_clk (int ,int ) ;
 int dev_err (int ,char*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct cs42l52_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int cs42l52_pcm_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params,
         struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs42l52_private *cs42l52 = snd_soc_component_get_drvdata(component);
 u32 clk = 0;
 int index;

 index = cs42l52_get_clk(cs42l52->sysclk, params_rate(params));
 if (index >= 0) {
  cs42l52->sysclk = clk_map_table[index].mclk;

  clk |= (clk_map_table[index].speed << CLK_SPEED_SHIFT) |
  (clk_map_table[index].group << CLK_32K_SR_SHIFT) |
  (clk_map_table[index].videoclk << CLK_27M_MCLK_SHIFT) |
  (clk_map_table[index].ratio << CLK_RATIO_SHIFT) |
  clk_map_table[index].mclkdiv2;

  snd_soc_component_write(component, CS42L52_CLK_CTL, clk);
 } else {
  dev_err(component->dev, "can't get correct mclk\n");
  return -EINVAL;
 }

 return 0;
}
