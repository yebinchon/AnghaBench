
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct rt5651_priv {int jd_src; int ovcd_sf; int ovcd_th; int jack_detect_work; int irq; struct snd_soc_jack* hp_jack; int jd_active_high; struct gpio_desc* gpiod_hp_det; } ;
struct gpio_desc {int dummy; } ;


 scalar_t__ RT5651_BIAS_CUR4 ;
 int RT5651_GP1_PIN_IRQ ;
 int RT5651_GP1_PIN_MASK ;
 int RT5651_GPIO_CTRL1 ;
 int RT5651_IRQ_CTRL1 ;
 int RT5651_IRQ_CTRL2 ;

 int RT5651_JD1_1_INV ;
 int RT5651_JD1_1_IRQ_EN ;

 int RT5651_JD1_2_INV ;
 int RT5651_JD1_2_IRQ_EN ;

 int RT5651_JD2_INV ;
 int RT5651_JD2_IRQ_EN ;
 int RT5651_JD_CTRL2 ;

 int RT5651_JD_TRG_SEL_JD1_1 ;
 int RT5651_JD_TRG_SEL_JD1_2 ;
 int RT5651_JD_TRG_SEL_JD2 ;
 int RT5651_JD_TRG_SEL_MASK ;
 int RT5651_MB1_OC_STKY_EN ;
 int RT5651_MB1_OC_STKY_MASK ;
 int RT5651_MIC1_OVCD_EN ;
 int RT5651_MIC1_OVCD_MASK ;
 int RT5651_MIC1_OVTH_MASK ;
 int RT5651_MICBIAS ;
 scalar_t__ RT5651_PR_BASE ;
 int RT5651_PWR_ANLG2 ;
 int RT5651_PWR_CLK12M_MASK ;
 int RT5651_PWR_CLK12M_PU ;
 int RT5651_PWR_JD_M ;
 int RT5651_PWR_MB_MASK ;
 int RT5651_PWR_MB_PU ;
 int dev_err (int ,char*) ;
 int enable_irq (int ) ;
 int queue_work (int ,int *) ;
 int rt5651_enable_micbias1_for_ovcd (struct snd_soc_component*) ;
 int rt5651_enable_micbias1_ovcd_irq (struct snd_soc_component*) ;
 scalar_t__ rt5651_support_button_press (struct rt5651_priv*) ;
 struct rt5651_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,int) ;
 int system_power_efficient_wq ;

__attribute__((used)) static void rt5651_enable_jack_detect(struct snd_soc_component *component,
          struct snd_soc_jack *hp_jack,
          struct gpio_desc *gpiod_hp_det)
{
 struct rt5651_priv *rt5651 = snd_soc_component_get_drvdata(component);
 bool using_internal_jack_detect = 1;


 switch (rt5651->jd_src) {
 case 128:
  rt5651->gpiod_hp_det = gpiod_hp_det;
  if (!rt5651->gpiod_hp_det)
   return;
  using_internal_jack_detect = 0;
  break;
 case 131:
  snd_soc_component_update_bits(component, RT5651_JD_CTRL2,
   RT5651_JD_TRG_SEL_MASK, RT5651_JD_TRG_SEL_JD1_1);

  if (rt5651->jd_active_high)
   snd_soc_component_update_bits(component,
    RT5651_IRQ_CTRL1,
    RT5651_JD1_1_IRQ_EN | RT5651_JD1_1_INV,
    RT5651_JD1_1_IRQ_EN | RT5651_JD1_1_INV);
  else
   snd_soc_component_update_bits(component,
    RT5651_IRQ_CTRL1,
    RT5651_JD1_1_IRQ_EN | RT5651_JD1_1_INV,
    RT5651_JD1_1_IRQ_EN);
  break;
 case 130:
  snd_soc_component_update_bits(component, RT5651_JD_CTRL2,
   RT5651_JD_TRG_SEL_MASK, RT5651_JD_TRG_SEL_JD1_2);

  if (rt5651->jd_active_high)
   snd_soc_component_update_bits(component,
    RT5651_IRQ_CTRL1,
    RT5651_JD1_2_IRQ_EN | RT5651_JD1_2_INV,
    RT5651_JD1_2_IRQ_EN | RT5651_JD1_2_INV);
  else
   snd_soc_component_update_bits(component,
    RT5651_IRQ_CTRL1,
    RT5651_JD1_2_IRQ_EN | RT5651_JD1_2_INV,
    RT5651_JD1_2_IRQ_EN);
  break;
 case 129:
  snd_soc_component_update_bits(component, RT5651_JD_CTRL2,
   RT5651_JD_TRG_SEL_MASK, RT5651_JD_TRG_SEL_JD2);

  if (rt5651->jd_active_high)
   snd_soc_component_update_bits(component,
    RT5651_IRQ_CTRL1,
    RT5651_JD2_IRQ_EN | RT5651_JD2_INV,
    RT5651_JD2_IRQ_EN | RT5651_JD2_INV);
  else
   snd_soc_component_update_bits(component,
    RT5651_IRQ_CTRL1,
    RT5651_JD2_IRQ_EN | RT5651_JD2_INV,
    RT5651_JD2_IRQ_EN);
  break;
 default:
  dev_err(component->dev, "Currently only JD1_1 / JD1_2 / JD2 are supported\n");
  return;
 }

 if (using_internal_jack_detect) {

  snd_soc_component_update_bits(component, RT5651_GPIO_CTRL1,
   RT5651_GP1_PIN_MASK, RT5651_GP1_PIN_IRQ);


  snd_soc_component_update_bits(component, RT5651_PWR_ANLG2,
   RT5651_PWR_JD_M, RT5651_PWR_JD_M);
 }


 snd_soc_component_write(component, RT5651_PR_BASE + RT5651_BIAS_CUR4,
    0xa800 | rt5651->ovcd_sf);

 snd_soc_component_update_bits(component, RT5651_MICBIAS,
          RT5651_MIC1_OVCD_MASK |
          RT5651_MIC1_OVTH_MASK |
          RT5651_PWR_CLK12M_MASK |
          RT5651_PWR_MB_MASK,
          RT5651_MIC1_OVCD_EN |
          rt5651->ovcd_th |
          RT5651_PWR_MB_PU |
          RT5651_PWR_CLK12M_PU);
 snd_soc_component_update_bits(component, RT5651_IRQ_CTRL2,
  RT5651_MB1_OC_STKY_MASK, RT5651_MB1_OC_STKY_EN);

 rt5651->hp_jack = hp_jack;
 if (rt5651_support_button_press(rt5651)) {
  rt5651_enable_micbias1_for_ovcd(component);
  rt5651_enable_micbias1_ovcd_irq(component);
 }

 enable_irq(rt5651->irq);

 queue_work(system_power_efficient_wq, &rt5651->jack_detect_work);
}
