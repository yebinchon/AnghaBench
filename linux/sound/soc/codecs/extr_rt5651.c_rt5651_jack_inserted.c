
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt5651_priv {int jd_src; scalar_t__ jd_active_high; scalar_t__ gpiod_hp_det; } ;


 int RT5651_INT_IRQ_ST ;



 int dev_dbg (int ,char*,int) ;
 int gpiod_get_value_cansleep (scalar_t__) ;
 struct rt5651_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static bool rt5651_jack_inserted(struct snd_soc_component *component)
{
 struct rt5651_priv *rt5651 = snd_soc_component_get_drvdata(component);
 int val;

 if (rt5651->gpiod_hp_det) {
  val = gpiod_get_value_cansleep(rt5651->gpiod_hp_det);
  dev_dbg(component->dev, "jack-detect gpio %d\n", val);
  return val;
 }

 val = snd_soc_component_read32(component, RT5651_INT_IRQ_ST);
 dev_dbg(component->dev, "irq status %#04x\n", val);

 switch (rt5651->jd_src) {
 case 130:
  val &= 0x1000;
  break;
 case 129:
  val &= 0x2000;
  break;
 case 128:
  val &= 0x4000;
  break;
 default:
  break;
 }

 if (rt5651->jd_active_high)
  return val != 0;
 else
  return val == 0;
}
