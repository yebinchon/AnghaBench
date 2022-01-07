
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;




 int WM8994_AIF1DSPCLK_ENA ;
 int WM8994_AIF2ADCL_ENA ;
 int WM8994_AIF2ADCL_SRC ;
 int WM8994_AIF2ADCR_ENA ;
 int WM8994_AIF2ADCR_SRC ;
 int WM8994_AIF2DACL_ENA ;
 int WM8994_AIF2DACL_SRC ;
 int WM8994_AIF2DACR_ENA ;
 int WM8994_AIF2DACR_SRC ;
 int WM8994_AIF2DSPCLK_ENA ;
 int WM8994_AIF2_CONTROL_1 ;
 int WM8994_AIF2_CONTROL_2 ;
 int WM8994_CLOCKING_1 ;
 int WM8994_POWER_MANAGEMENT_4 ;
 int WM8994_POWER_MANAGEMENT_5 ;
 int WM8994_SYSDSPCLK_ENA ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 TYPE_1__* wm8994_vu_bits ;

__attribute__((used)) static int aif2clk_ev(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 int i;
 int dac;
 int adc;
 int val;

 switch (event) {
 case 128:
  val = snd_soc_component_read32(component, WM8994_AIF2_CONTROL_1);
  if ((val & WM8994_AIF2ADCL_SRC) &&
      (val & WM8994_AIF2ADCR_SRC))
   adc = WM8994_AIF2ADCR_ENA;
  else if (!(val & WM8994_AIF2ADCL_SRC) &&
    !(val & WM8994_AIF2ADCR_SRC))
   adc = WM8994_AIF2ADCL_ENA;
  else
   adc = WM8994_AIF2ADCL_ENA | WM8994_AIF2ADCR_ENA;


  val = snd_soc_component_read32(component, WM8994_AIF2_CONTROL_2);
  if ((val & WM8994_AIF2DACL_SRC) &&
      (val & WM8994_AIF2DACR_SRC))
   dac = WM8994_AIF2DACR_ENA;
  else if (!(val & WM8994_AIF2DACL_SRC) &&
    !(val & WM8994_AIF2DACR_SRC))
   dac = WM8994_AIF2DACL_ENA;
  else
   dac = WM8994_AIF2DACL_ENA | WM8994_AIF2DACR_ENA;

  snd_soc_component_update_bits(component, WM8994_POWER_MANAGEMENT_4,
        WM8994_AIF2ADCL_ENA |
        WM8994_AIF2ADCR_ENA, adc);
  snd_soc_component_update_bits(component, WM8994_POWER_MANAGEMENT_5,
        WM8994_AIF2DACL_ENA |
        WM8994_AIF2DACR_ENA, dac);
  snd_soc_component_update_bits(component, WM8994_CLOCKING_1,
        WM8994_AIF2DSPCLK_ENA |
        WM8994_SYSDSPCLK_ENA,
        WM8994_AIF2DSPCLK_ENA |
        WM8994_SYSDSPCLK_ENA);
  snd_soc_component_update_bits(component, WM8994_POWER_MANAGEMENT_4,
        WM8994_AIF2ADCL_ENA |
        WM8994_AIF2ADCR_ENA,
        WM8994_AIF2ADCL_ENA |
        WM8994_AIF2ADCR_ENA);
  snd_soc_component_update_bits(component, WM8994_POWER_MANAGEMENT_5,
        WM8994_AIF2DACL_ENA |
        WM8994_AIF2DACR_ENA,
        WM8994_AIF2DACL_ENA |
        WM8994_AIF2DACR_ENA);
  break;

 case 130:
  for (i = 0; i < ARRAY_SIZE(wm8994_vu_bits); i++)
   snd_soc_component_write(component, wm8994_vu_bits[i].reg,
          snd_soc_component_read32(component,
         wm8994_vu_bits[i].reg));
  break;

 case 129:
 case 131:
  snd_soc_component_update_bits(component, WM8994_POWER_MANAGEMENT_5,
        WM8994_AIF2DACL_ENA |
        WM8994_AIF2DACR_ENA, 0);
  snd_soc_component_update_bits(component, WM8994_POWER_MANAGEMENT_4,
        WM8994_AIF2ADCL_ENA |
        WM8994_AIF2ADCR_ENA, 0);

  val = snd_soc_component_read32(component, WM8994_CLOCKING_1);
  if (val & WM8994_AIF1DSPCLK_ENA)
   val = WM8994_SYSDSPCLK_ENA;
  else
   val = 0;
  snd_soc_component_update_bits(component, WM8994_CLOCKING_1,
        WM8994_SYSDSPCLK_ENA |
        WM8994_AIF2DSPCLK_ENA, val);
  break;
 }

 return 0;
}
