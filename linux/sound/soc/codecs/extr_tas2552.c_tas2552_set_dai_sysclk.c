
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tas2552_data {int pll_clk_id; unsigned int pll_clkin; int pdm_clk_id; unsigned int pdm_clk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int TAS2552_CFG_1 ;
 int TAS2552_PDM_CFG ;




 int TAS2552_PDM_CLK_SEL_MASK ;




 int TAS2552_PLL_SRC_MASK ;
 int dev_err (int ,char*,int) ;
 struct tas2552_data* dev_get_drvdata (int ) ;
 int dev_warn (int ,char*,unsigned int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;

__attribute__((used)) static int tas2552_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
      unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct tas2552_data *tas2552 = dev_get_drvdata(component->dev);
 u8 reg, mask, val;

 switch (clk_id) {
 case 128:
 case 129:
  if (freq < 512000 || freq > 24576000) {

   dev_warn(component->dev, "Out of range PLL_CLKIN: %u\n",
     freq);
   clk_id = 130;
   freq = 0;
  }

 case 130:
 case 131:
  mask = TAS2552_PLL_SRC_MASK;
  val = (clk_id << 3) & mask;
  reg = TAS2552_CFG_1;
  tas2552->pll_clk_id = clk_id;
  tas2552->pll_clkin = freq;
  break;
 case 132:
 case 134:
 case 135:
 case 133:
  mask = TAS2552_PDM_CLK_SEL_MASK;
  val = (clk_id >> 1) & mask;
  reg = TAS2552_PDM_CFG;
  tas2552->pdm_clk_id = clk_id;
  tas2552->pdm_clk = freq;
  break;
 default:
  dev_err(component->dev, "Invalid clk id: %d\n", clk_id);
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, reg, mask, val);

 return 0;
}
