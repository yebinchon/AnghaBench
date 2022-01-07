
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int status; } ;
struct snd_soc_component {int dummy; } ;
struct rt5640_priv {int jd_src; int ovcd_sf; int ovcd_th; int jack_work; int irq; struct snd_soc_jack* jack; scalar_t__ jd_inverted; } ;


 scalar_t__ RT5640_BIAS_CUR4 ;
 scalar_t__ RT5640_DUMMY1 ;
 scalar_t__ RT5640_DUMMY2 ;
 int RT5640_GP1_PF_MASK ;
 int RT5640_GP1_PF_OUT ;
 int RT5640_GP1_PIN_IRQ ;
 int RT5640_GP1_PIN_MASK ;
 int RT5640_GPIO_CTRL1 ;
 int RT5640_GPIO_CTRL3 ;
 scalar_t__ RT5640_IRQ_CTRL1 ;
 int RT5640_IRQ_CTRL2 ;
 int RT5640_IRQ_JD_NOR ;
 int RT5640_JD_CTRL ;
 int RT5640_JD_MASK ;
 int RT5640_JD_P_INV ;
 int RT5640_MB1_OC_STKY_EN ;
 int RT5640_MB1_OC_STKY_MASK ;
 int RT5640_MIC1_OVCD_EN ;
 int RT5640_MIC1_OVCD_MASK ;
 int RT5640_MIC1_OVTH_MASK ;
 int RT5640_MICBIAS ;
 scalar_t__ RT5640_PR_BASE ;
 int SND_JACK_MICROPHONE ;
 int enable_irq (int ) ;
 int queue_work (int ,int *) ;
 int rt5640_enable_micbias1_for_ovcd (struct snd_soc_component*) ;
 int rt5640_enable_micbias1_ovcd_irq (struct snd_soc_component*) ;
 struct rt5640_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,int) ;
 int system_long_wq ;

__attribute__((used)) static void rt5640_enable_jack_detect(struct snd_soc_component *component,
          struct snd_soc_jack *jack)
{
 struct rt5640_priv *rt5640 = snd_soc_component_get_drvdata(component);


 snd_soc_component_update_bits(component, RT5640_JD_CTRL,
  RT5640_JD_MASK, rt5640->jd_src);


 snd_soc_component_update_bits(component, RT5640_GPIO_CTRL1,
  RT5640_GP1_PIN_MASK, RT5640_GP1_PIN_IRQ);


 snd_soc_component_update_bits(component, RT5640_GPIO_CTRL3,
  RT5640_GP1_PF_MASK, RT5640_GP1_PF_OUT);


 snd_soc_component_write(component, RT5640_DUMMY1, 0x3f41);


 snd_soc_component_write(component, RT5640_DUMMY2, 0x4001);

 snd_soc_component_write(component, RT5640_PR_BASE + RT5640_BIAS_CUR4,
  0xa800 | rt5640->ovcd_sf);

 snd_soc_component_update_bits(component, RT5640_MICBIAS,
  RT5640_MIC1_OVTH_MASK | RT5640_MIC1_OVCD_MASK,
  rt5640->ovcd_th | RT5640_MIC1_OVCD_EN);
 snd_soc_component_update_bits(component, RT5640_IRQ_CTRL2,
  RT5640_MB1_OC_STKY_MASK, RT5640_MB1_OC_STKY_EN);







 if (rt5640->jd_inverted)
  snd_soc_component_write(component, RT5640_IRQ_CTRL1,
     RT5640_IRQ_JD_NOR);
 else
  snd_soc_component_write(component, RT5640_IRQ_CTRL1,
     RT5640_IRQ_JD_NOR | RT5640_JD_P_INV);

 rt5640->jack = jack;
 if (rt5640->jack->status & SND_JACK_MICROPHONE) {
  rt5640_enable_micbias1_for_ovcd(component);
  rt5640_enable_micbias1_ovcd_irq(component);
 }

 enable_irq(rt5640->irq);

 queue_work(system_long_wq, &rt5640->jack_work);
}
