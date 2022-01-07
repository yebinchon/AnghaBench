
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct da7218_priv {int master; } ;


 int DA7218_DAI_CLK_EN_MASK ;
 int DA7218_DAI_CLK_MODE ;
 int DA7218_PC_COUNT ;
 int DA7218_PC_FREERUN_MASK ;
 int DA7218_PC_RESYNC_AUTO_MASK ;
 int DA7218_PLL_CTRL ;
 int DA7218_PLL_MODE_MASK ;
 int DA7218_PLL_MODE_SRM ;
 int DA7218_PLL_REFOSC_CAL ;
 int DA7218_PLL_REFOSC_CAL_EN_MASK ;
 int DA7218_PLL_REFOSC_CAL_START_MASK ;
 int DA7218_PLL_SRM_STATUS_SRM_LOCK ;
 int DA7218_PLL_STATUS ;
 int DA7218_REF_OSC_CHECK_DELAY_MAX ;
 int DA7218_REF_OSC_CHECK_DELAY_MIN ;
 int DA7218_REF_OSC_CHECK_TRIES ;
 int DA7218_SRM_CHECK_DELAY ;
 int DA7218_SRM_CHECK_TRIES ;
 int EINVAL ;


 int dev_warn (int ,char*) ;
 int msleep (int ) ;
 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int da7218_dai_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);
 u8 pll_ctrl, pll_status, refosc_cal;
 int i;
 bool success;

 switch (event) {
 case 128:
  if (da7218->master)

   snd_soc_component_update_bits(component, DA7218_DAI_CLK_MODE,
         DA7218_DAI_CLK_EN_MASK,
         DA7218_DAI_CLK_EN_MASK);


  snd_soc_component_write(component, DA7218_PLL_REFOSC_CAL,
         DA7218_PLL_REFOSC_CAL_START_MASK);
  snd_soc_component_write(component, DA7218_PLL_REFOSC_CAL,
         DA7218_PLL_REFOSC_CAL_START_MASK |
         DA7218_PLL_REFOSC_CAL_EN_MASK);


  i = 0;
  success = 0;
  do {
   refosc_cal = snd_soc_component_read32(component, DA7218_PLL_REFOSC_CAL);
   if (!(refosc_cal & DA7218_PLL_REFOSC_CAL_START_MASK)) {
    success = 1;
   } else {
    ++i;
    usleep_range(DA7218_REF_OSC_CHECK_DELAY_MIN,
          DA7218_REF_OSC_CHECK_DELAY_MAX);
   }
  } while ((i < DA7218_REF_OSC_CHECK_TRIES) && (!success));

  if (!success)
   dev_warn(component->dev,
     "Reference oscillator failed calibration\n");


  snd_soc_component_write(component, DA7218_PC_COUNT,
         DA7218_PC_RESYNC_AUTO_MASK);


  pll_ctrl = snd_soc_component_read32(component, DA7218_PLL_CTRL);
  if ((pll_ctrl & DA7218_PLL_MODE_MASK) != DA7218_PLL_MODE_SRM)
   return 0;


  i = 0;
  success = 0;
  do {
   pll_status = snd_soc_component_read32(component, DA7218_PLL_STATUS);
   if (pll_status & DA7218_PLL_SRM_STATUS_SRM_LOCK) {
    success = 1;
   } else {
    ++i;
    msleep(DA7218_SRM_CHECK_DELAY);
   }
  } while ((i < DA7218_SRM_CHECK_TRIES) && (!success));

  if (!success)
   dev_warn(component->dev, "SRM failed to lock\n");

  return 0;
 case 129:

  snd_soc_component_write(component, DA7218_PC_COUNT, DA7218_PC_FREERUN_MASK);

  if (da7218->master)

   snd_soc_component_update_bits(component, DA7218_DAI_CLK_MODE,
         DA7218_DAI_CLK_EN_MASK, 0);

  return 0;
 default:
  return -EINVAL;
 }
}
