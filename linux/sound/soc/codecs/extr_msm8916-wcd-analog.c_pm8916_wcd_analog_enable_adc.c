
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct snd_soc_dapm_widget {scalar_t__ reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int CDC_A_MICB_1_CTL ;
 int CDC_A_TX_1_2_TEST_CTL_2 ;



 int CDC_D_CDC_CONN_TX1_CTL ;
 int CDC_D_CDC_CONN_TX2_CTL ;
 int CONN_TX1_SERIAL_TX1_ADC_1 ;
 int CONN_TX1_SERIAL_TX1_MUX ;
 int CONN_TX1_SERIAL_TX1_ZERO ;
 int CONN_TX2_SERIAL_TX2_ADC_2 ;
 int CONN_TX2_SERIAL_TX2_MUX ;
 int CONN_TX2_SERIAL_TX2_ZERO ;
 int MICB_1_CTL_CFILT_REF_SEL_HPF_REF ;
 int MICB_1_CTL_CFILT_REF_SEL_MASK ;



 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pm8916_wcd_analog_enable_adc(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol,
      int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 u16 adc_reg = CDC_A_TX_1_2_TEST_CTL_2;
 u8 init_bit_shift;

 if (w->reg == 133)
  init_bit_shift = 5;
 else
  init_bit_shift = 4;

 switch (event) {
 case 128:
  if (w->reg == 132)
   snd_soc_component_update_bits(component, CDC_A_MICB_1_CTL,
         MICB_1_CTL_CFILT_REF_SEL_MASK,
         MICB_1_CTL_CFILT_REF_SEL_HPF_REF);





  usleep_range(10000, 10010);
  snd_soc_component_update_bits(component, adc_reg, 1 << init_bit_shift,
        1 << init_bit_shift);
  switch (w->reg) {
  case 133:
   snd_soc_component_update_bits(component, CDC_D_CDC_CONN_TX1_CTL,
         CONN_TX1_SERIAL_TX1_MUX,
         CONN_TX1_SERIAL_TX1_ADC_1);
   break;
  case 132:
  case 131:
   snd_soc_component_update_bits(component, CDC_D_CDC_CONN_TX2_CTL,
         CONN_TX2_SERIAL_TX2_MUX,
         CONN_TX2_SERIAL_TX2_ADC_2);
   break;
  }
  break;
 case 129:




  usleep_range(12000, 12010);
  snd_soc_component_update_bits(component, adc_reg, 1 << init_bit_shift, 0x00);
  break;
 case 130:
  switch (w->reg) {
  case 133:
   snd_soc_component_update_bits(component, CDC_D_CDC_CONN_TX1_CTL,
         CONN_TX1_SERIAL_TX1_MUX,
         CONN_TX1_SERIAL_TX1_ZERO);
   break;
  case 132:
   snd_soc_component_update_bits(component, CDC_A_MICB_1_CTL,
         MICB_1_CTL_CFILT_REF_SEL_MASK, 0);

  case 131:
   snd_soc_component_update_bits(component, CDC_D_CDC_CONN_TX2_CTL,
         CONN_TX2_SERIAL_TX2_MUX,
         CONN_TX2_SERIAL_TX2_ZERO);
   break;
  }


  break;
 }
 return 0;
}
