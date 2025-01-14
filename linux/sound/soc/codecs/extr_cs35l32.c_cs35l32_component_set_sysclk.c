
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int CS35L32_CLK_CTL ;
 unsigned int CS35L32_MCLK_DIV2_MASK ;
 unsigned int CS35L32_MCLK_RATIO ;
 unsigned int CS35L32_MCLK_RATIO_MASK ;
 int EINVAL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int cs35l32_component_set_sysclk(struct snd_soc_component *component,
         int clk_id, int source, unsigned int freq, int dir)
{
 unsigned int val;

 switch (freq) {
 case 6000000:
  val = CS35L32_MCLK_RATIO;
  break;
 case 12000000:
  val = CS35L32_MCLK_DIV2_MASK | CS35L32_MCLK_RATIO;
  break;
 case 6144000:
  val = 0;
  break;
 case 12288000:
  val = CS35L32_MCLK_DIV2_MASK;
  break;
 default:
  return -EINVAL;
 }

 return snd_soc_component_update_bits(component, CS35L32_CLK_CTL,
   CS35L32_MCLK_DIV2_MASK | CS35L32_MCLK_RATIO_MASK, val);
}
