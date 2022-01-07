
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int DA732X_AIF1_CLK_MASK ;
 int DA732X_AIFM_FRAME_64 ;
 int DA732X_AIFM_SRC_SEL_AIFA ;
 int DA732X_AIF_BCLK_INV ;
 int DA732X_AIF_CLK_FROM_SRC ;
 int DA732X_AIF_DSP_MODE ;
 int DA732X_AIF_I2S_MODE ;
 int DA732X_AIF_LEFT_J_MODE ;
 int DA732X_AIF_MODE_MASK ;
 int DA732X_AIF_RIGHT_J_MODE ;
 int DA732X_AIF_SLAVE ;
 int DA732X_AIF_WCLK_INV ;
 int DA732X_CLK_GENERATION_AIF_A ;


 int DA732X_PC_PULSE_AIFA ;
 int DA732X_PC_PULSE_AIFB ;
 int DA732X_PC_RESYNC_NOT_AUT ;
 int DA732X_PC_SAME ;
 int DA732X_REG_AIFA1 ;
 int DA732X_REG_AIFA3 ;
 int DA732X_REG_AIFB1 ;
 int DA732X_REG_AIFB3 ;
 int DA732X_REG_AIF_MCLK ;
 int DA732X_REG_PC_CTRL ;
 int EINVAL ;



 int SND_SOC_DAIFMT_FORMAT_MASK ;



 int SND_SOC_DAIFMT_INV_MASK ;

 int SND_SOC_DAIFMT_MASTER_MASK ;



 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int da732x_set_dai_fmt(struct snd_soc_dai *dai, u32 fmt)
{
 struct snd_soc_component *component = dai->component;
 u32 aif_mclk, pc_count;
 u32 reg_aif1, aif1;
 u32 reg_aif3, aif3;

 switch (dai->id) {
 case 139:
  reg_aif1 = DA732X_REG_AIFA1;
  reg_aif3 = DA732X_REG_AIFA3;
  pc_count = DA732X_PC_PULSE_AIFA | DA732X_PC_RESYNC_NOT_AUT |
      DA732X_PC_SAME;
  break;
 case 138:
  reg_aif1 = DA732X_REG_AIFB1;
  reg_aif3 = DA732X_REG_AIFB3;
  pc_count = DA732X_PC_PULSE_AIFB | DA732X_PC_RESYNC_NOT_AUT |
      DA732X_PC_SAME;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 136:
  aif1 = DA732X_AIF_SLAVE;
  aif_mclk = DA732X_AIFM_FRAME_64 | DA732X_AIFM_SRC_SEL_AIFA;
  break;
 case 137:
  aif1 = DA732X_AIF_CLK_FROM_SRC;
  aif_mclk = DA732X_CLK_GENERATION_AIF_A;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  aif3 = DA732X_AIF_I2S_MODE;
  break;
 case 128:
  aif3 = DA732X_AIF_RIGHT_J_MODE;
  break;
 case 131:
  aif3 = DA732X_AIF_LEFT_J_MODE;
  break;
 case 135:
  aif3 = DA732X_AIF_DSP_MODE;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 135:
  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
   break;
  case 132:
   aif3 |= DA732X_AIF_BCLK_INV;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 134:
 case 128:
 case 131:
  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
   break;
  case 133:
   aif3 |= DA732X_AIF_BCLK_INV | DA732X_AIF_WCLK_INV;
   break;
  case 132:
   aif3 |= DA732X_AIF_BCLK_INV;
   break;
  case 130:
   aif3 |= DA732X_AIF_WCLK_INV;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, DA732X_REG_AIF_MCLK, aif_mclk);
 snd_soc_component_update_bits(component, reg_aif1, DA732X_AIF1_CLK_MASK, aif1);
 snd_soc_component_update_bits(component, reg_aif3, DA732X_AIF_BCLK_INV |
       DA732X_AIF_WCLK_INV | DA732X_AIF_MODE_MASK, aif3);
 snd_soc_component_write(component, DA732X_REG_PC_CTRL, pc_count);

 return 0;
}
