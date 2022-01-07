
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int RT5651_IRQ_CTRL2 ;
 int RT5651_MB1_OC_CLR ;
 int dev_dbg (int ,char*,int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static bool rt5651_micbias1_ovcd(struct snd_soc_component *component)
{
 int val;

 val = snd_soc_component_read32(component, RT5651_IRQ_CTRL2);
 dev_dbg(component->dev, "irq ctrl2 %#04x\n", val);

 return (val & RT5651_MB1_OC_CLR);
}
