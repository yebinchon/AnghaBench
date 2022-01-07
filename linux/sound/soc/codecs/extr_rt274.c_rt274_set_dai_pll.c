
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct rt274_priv {int fs; } ;


 int RT274_MCLK_CTRL ;
 int RT274_PLL2_CTRL ;
 int RT274_PLL2_SRC_BCLK ;
 int RT274_PLL2_SRC_MASK ;
 int RT274_PLL2_SRC_MCLK ;


 int dev_warn (int ,char*) ;
 struct rt274_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int,int) ;

__attribute__((used)) static int rt274_set_dai_pll(struct snd_soc_dai *dai, int pll_id, int source,
   unsigned int freq_in, unsigned int freq_out)
{
 struct snd_soc_component *component = dai->component;
 struct rt274_priv *rt274 = snd_soc_component_get_drvdata(component);

 switch (source) {
 case 128:
  snd_soc_component_update_bits(component, RT274_PLL2_CTRL,
    RT274_PLL2_SRC_MASK, RT274_PLL2_SRC_MCLK);
  break;
 default:
  dev_warn(component->dev, "invalid pll source, use BCLK\n");

 case 129:
  snd_soc_component_update_bits(component, RT274_PLL2_CTRL,
    RT274_PLL2_SRC_MASK, RT274_PLL2_SRC_BCLK);
  break;
 }

 if (source == 129) {
  snd_soc_component_update_bits(component, RT274_MCLK_CTRL,
    (0x3 << 12), (0x3 << 12));
  switch (rt274->fs) {
  case 50:
   snd_soc_component_write(component, 0x7a, 0xaab6);
   snd_soc_component_write(component, 0x7b, 0x0301);
   snd_soc_component_write(component, 0x7c, 0x04fe);
   break;
  case 64:
   snd_soc_component_write(component, 0x7a, 0xaa96);
   snd_soc_component_write(component, 0x7b, 0x8003);
   snd_soc_component_write(component, 0x7c, 0x081e);
   break;
  case 128:
   snd_soc_component_write(component, 0x7a, 0xaa96);
   snd_soc_component_write(component, 0x7b, 0x8003);
   snd_soc_component_write(component, 0x7c, 0x080e);
   break;
  default:
   dev_warn(component->dev, "invalid freq_in, assume 4.8M\n");

  case 100:
   snd_soc_component_write(component, 0x7a, 0xaab6);
   snd_soc_component_write(component, 0x7b, 0x0301);
   snd_soc_component_write(component, 0x7c, 0x047e);
   break;
  }
 }

 return 0;
}
