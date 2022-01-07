
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;





 int WM8994_CLASS_W_1 ;
 int WM8994_CP_DYN_SRC_SEL_MASK ;
 int WM8994_CP_DYN_SRC_SEL_SHIFT ;
 int WM8994_DAC1_LEFT_MIXER_ROUTING ;
 int WM8994_DAC1_RIGHT_MIXER_ROUTING ;
 int dev_vdbg (int ,char*,...) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static bool wm8994_check_class_w_digital(struct snd_soc_component *component)
{
 int source = 0;
 int reg, reg_r;


 reg = snd_soc_component_read32(component, WM8994_DAC1_LEFT_MIXER_ROUTING);
 switch (reg) {
 case 128:
  dev_vdbg(component->dev, "Class W source AIF2DAC\n");
  source = 2 << WM8994_CP_DYN_SRC_SEL_SHIFT;
  break;
 case 129:
  dev_vdbg(component->dev, "Class W source AIF1DAC2\n");
  source = 1 << WM8994_CP_DYN_SRC_SEL_SHIFT;
  break;
 case 130:
  dev_vdbg(component->dev, "Class W source AIF1DAC1\n");
  source = 0 << WM8994_CP_DYN_SRC_SEL_SHIFT;
  break;
 default:
  dev_vdbg(component->dev, "DAC mixer setting: %x\n", reg);
  return 0;
 }

 reg_r = snd_soc_component_read32(component, WM8994_DAC1_RIGHT_MIXER_ROUTING);
 if (reg_r != reg) {
  dev_vdbg(component->dev, "Left and right DAC mixers different\n");
  return 0;
 }


 snd_soc_component_update_bits(component, WM8994_CLASS_W_1,
       WM8994_CP_DYN_SRC_SEL_MASK, source);

 return 1;
}
