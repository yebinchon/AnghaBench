
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int ENODEV ;
 int SND_SOC_BIAS_STANDBY ;
 int WM8900_REG_ID ;
 int WM8900_REG_LADC_DV ;
 int WM8900_REG_LDAC_DV ;
 int WM8900_REG_LINVOL ;
 int WM8900_REG_LOUT1CTL ;
 int WM8900_REG_LOUT2CTL ;
 int WM8900_REG_OUTBIASCTL ;
 int WM8900_REG_RADC_DV ;
 int WM8900_REG_RDAC_DV ;
 int WM8900_REG_RINVOL ;
 int WM8900_REG_ROUT1CTL ;
 int WM8900_REG_ROUT2CTL ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int wm8900_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8900_probe(struct snd_soc_component *component)
{
 int reg;

 reg = snd_soc_component_read32(component, WM8900_REG_ID);
 if (reg != 0x8900) {
  dev_err(component->dev, "Device is not a WM8900 - ID %x\n", reg);
  return -ENODEV;
 }

 wm8900_reset(component);


 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_STANDBY);


 snd_soc_component_update_bits(component, WM8900_REG_LINVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8900_REG_RINVOL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8900_REG_LOUT1CTL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8900_REG_ROUT1CTL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8900_REG_LOUT2CTL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8900_REG_ROUT2CTL, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8900_REG_LDAC_DV, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8900_REG_RDAC_DV, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8900_REG_LADC_DV, 0x100, 0x100);
 snd_soc_component_update_bits(component, WM8900_REG_RADC_DV, 0x100, 0x100);


 snd_soc_component_write(component, WM8900_REG_OUTBIASCTL, 0x81);

 return 0;
}
