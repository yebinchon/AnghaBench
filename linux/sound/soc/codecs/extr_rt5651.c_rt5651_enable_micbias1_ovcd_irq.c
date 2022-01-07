
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5651_priv {int ovcd_irq_enabled; } ;


 int RT5651_IRQ_CTRL2 ;
 int RT5651_IRQ_MB1_OC_MASK ;
 int RT5651_IRQ_MB1_OC_NOR ;
 struct rt5651_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void rt5651_enable_micbias1_ovcd_irq(struct snd_soc_component *component)
{
 struct rt5651_priv *rt5651 = snd_soc_component_get_drvdata(component);

 snd_soc_component_update_bits(component, RT5651_IRQ_CTRL2,
  RT5651_IRQ_MB1_OC_MASK, RT5651_IRQ_MB1_OC_NOR);
 rt5651->ovcd_irq_enabled = 1;
}
