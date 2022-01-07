
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct da7213_priv {int master; } ;


 int DA7213_DAI_CLK_EN_MASK ;
 int DA7213_DAI_CLK_MODE ;
 int DA7213_PC_COUNT ;
 int DA7213_PC_FREERUN_MASK ;
 int DA7213_PLL_32K_MODE ;
 int DA7213_PLL_CTRL ;
 int DA7213_PLL_SRM_EN ;
 int DA7213_PLL_STATUS ;
 int DA7213_SRM_CHECK_RETRIES ;
 int DA7219_PLL_SRM_LOCK ;
 int EINVAL ;


 int dev_warn (int ,char*) ;
 int msleep (int) ;
 struct da7213_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int da7213_dai_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct da7213_priv *da7213 = snd_soc_component_get_drvdata(component);
 u8 pll_ctrl, pll_status;
 int i = 0;
 bool srm_lock = 0;

 switch (event) {
 case 128:

  if (da7213->master)
   snd_soc_component_update_bits(component, DA7213_DAI_CLK_MODE,
         DA7213_DAI_CLK_EN_MASK,
         DA7213_DAI_CLK_EN_MASK);


  snd_soc_component_update_bits(component, DA7213_PC_COUNT,
        DA7213_PC_FREERUN_MASK, 0);


  pll_ctrl = snd_soc_component_read32(component, DA7213_PLL_CTRL);
  if (!(pll_ctrl & DA7213_PLL_SRM_EN))
   return 0;


  if (pll_ctrl & DA7213_PLL_32K_MODE) {
   snd_soc_component_write(component, 0xF0, 0x8B);
   snd_soc_component_write(component, 0xF2, 0x03);
   snd_soc_component_write(component, 0xF0, 0x00);
  }


  do {
   pll_status = snd_soc_component_read32(component, DA7213_PLL_STATUS);
   if (pll_status & DA7219_PLL_SRM_LOCK) {
    srm_lock = 1;
   } else {
    ++i;
    msleep(50);
   }
  } while ((i < DA7213_SRM_CHECK_RETRIES) && (!srm_lock));

  if (!srm_lock)
   dev_warn(component->dev, "SRM failed to lock\n");

  return 0;
 case 129:

  pll_ctrl = snd_soc_component_read32(component, DA7213_PLL_CTRL);
  if (pll_ctrl & DA7213_PLL_32K_MODE) {
   snd_soc_component_write(component, 0xF0, 0x8B);
   snd_soc_component_write(component, 0xF2, 0x01);
   snd_soc_component_write(component, 0xF0, 0x00);
  }


  snd_soc_component_update_bits(component, DA7213_PC_COUNT,
        DA7213_PC_FREERUN_MASK,
        DA7213_PC_FREERUN_MASK);


  if (da7213->master)
   snd_soc_component_update_bits(component, DA7213_DAI_CLK_MODE,
         DA7213_DAI_CLK_EN_MASK, 0);
  return 0;
 default:
  return -EINVAL;
 }
}
