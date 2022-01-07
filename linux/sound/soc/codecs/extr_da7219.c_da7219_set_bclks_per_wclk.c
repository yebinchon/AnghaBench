
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;


 int DA7219_DAI_BCLKS_PER_WCLK_128 ;
 int DA7219_DAI_BCLKS_PER_WCLK_256 ;
 int DA7219_DAI_BCLKS_PER_WCLK_32 ;
 int DA7219_DAI_BCLKS_PER_WCLK_64 ;
 int DA7219_DAI_BCLKS_PER_WCLK_MASK ;
 int DA7219_DAI_CLK_MODE ;
 int EINVAL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int da7219_set_bclks_per_wclk(struct snd_soc_component *component,
         unsigned long factor)
{
 u8 bclks_per_wclk;

 switch (factor) {
 case 32:
  bclks_per_wclk = DA7219_DAI_BCLKS_PER_WCLK_32;
  break;
 case 64:
  bclks_per_wclk = DA7219_DAI_BCLKS_PER_WCLK_64;
  break;
 case 128:
  bclks_per_wclk = DA7219_DAI_BCLKS_PER_WCLK_128;
  break;
 case 256:
  bclks_per_wclk = DA7219_DAI_BCLKS_PER_WCLK_256;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, DA7219_DAI_CLK_MODE,
          DA7219_DAI_BCLKS_PER_WCLK_MASK,
          bclks_per_wclk);

 return 0;
}
