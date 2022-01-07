
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int RT5640_IRQ_CTRL2 ;
 int RT5640_MB1_OC_STATUS ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void rt5640_clear_micbias1_ovcd(struct snd_soc_component *component)
{
 snd_soc_component_update_bits(component, RT5640_IRQ_CTRL2,
  RT5640_MB1_OC_STATUS, 0);
}
