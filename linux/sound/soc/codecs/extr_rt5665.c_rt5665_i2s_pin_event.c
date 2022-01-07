
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 unsigned int RT5665_GP2_PIN_BCLK2 ;
 unsigned int RT5665_GP2_PIN_MASK ;
 unsigned int RT5665_GP3_PIN_LRCK2 ;
 unsigned int RT5665_GP3_PIN_MASK ;
 unsigned int RT5665_GP4_PIN_DACDAT2_1 ;
 unsigned int RT5665_GP4_PIN_MASK ;
 unsigned int RT5665_GP5_PIN_ADCDAT2_1 ;
 unsigned int RT5665_GP5_PIN_MASK ;
 unsigned int RT5665_GP6_PIN_BCLK3 ;
 unsigned int RT5665_GP6_PIN_MASK ;
 unsigned int RT5665_GP7_PIN_LRCK3 ;
 unsigned int RT5665_GP7_PIN_MASK ;
 unsigned int RT5665_GP8_PIN_DACDAT2_2 ;
 unsigned int RT5665_GP8_PIN_DACDAT3 ;
 unsigned int RT5665_GP8_PIN_MASK ;
 unsigned int RT5665_GP9_PIN_ADCDAT2_2 ;
 unsigned int RT5665_GP9_PIN_ADCDAT3 ;
 unsigned int RT5665_GP9_PIN_MASK ;
 int RT5665_GPIO_CTRL_1 ;
 int RT5665_GPIO_CTRL_2 ;





 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5665_i2s_pin_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 unsigned int val1, val2, mask1 = 0, mask2 = 0;

 switch (w->shift) {
 case 132:
  mask1 = RT5665_GP2_PIN_MASK | RT5665_GP3_PIN_MASK |
   RT5665_GP4_PIN_MASK | RT5665_GP5_PIN_MASK;
  val1 = RT5665_GP2_PIN_BCLK2 | RT5665_GP3_PIN_LRCK2 |
   RT5665_GP4_PIN_DACDAT2_1 | RT5665_GP5_PIN_ADCDAT2_1;
  break;
 case 131:
  mask1 = RT5665_GP2_PIN_MASK | RT5665_GP3_PIN_MASK |
   RT5665_GP8_PIN_MASK;
  val1 = RT5665_GP2_PIN_BCLK2 | RT5665_GP3_PIN_LRCK2 |
   RT5665_GP8_PIN_DACDAT2_2;
  mask2 = RT5665_GP9_PIN_MASK;
  val2 = RT5665_GP9_PIN_ADCDAT2_2;
  break;
 case 130:
  mask1 = RT5665_GP6_PIN_MASK | RT5665_GP7_PIN_MASK |
   RT5665_GP8_PIN_MASK;
  val1 = RT5665_GP6_PIN_BCLK3 | RT5665_GP7_PIN_LRCK3 |
   RT5665_GP8_PIN_DACDAT3;
  mask2 = RT5665_GP9_PIN_MASK;
  val2 = RT5665_GP9_PIN_ADCDAT3;
  break;
 }
 switch (event) {
 case 128:
  if (mask1)
   snd_soc_component_update_bits(component, RT5665_GPIO_CTRL_1,
         mask1, val1);
  if (mask2)
   snd_soc_component_update_bits(component, RT5665_GPIO_CTRL_2,
         mask2, val2);
  break;
 case 129:
  if (mask1)
   snd_soc_component_update_bits(component, RT5665_GPIO_CTRL_1,
         mask1, 0);
  if (mask2)
   snd_soc_component_update_bits(component, RT5665_GPIO_CTRL_2,
         mask2, 0);
  break;
 default:
  return 0;
 }

 return 0;
}
