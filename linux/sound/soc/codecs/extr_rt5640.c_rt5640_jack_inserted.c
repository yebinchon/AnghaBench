
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt5640_priv {scalar_t__ jd_inverted; } ;


 int RT5640_INT_IRQ_ST ;
 int RT5640_JD_STATUS ;
 int dev_dbg (int ,char*,int) ;
 struct rt5640_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static bool rt5640_jack_inserted(struct snd_soc_component *component)
{
 struct rt5640_priv *rt5640 = snd_soc_component_get_drvdata(component);
 int val;

 val = snd_soc_component_read32(component, RT5640_INT_IRQ_ST);
 dev_dbg(component->dev, "irq status %#04x\n", val);

 if (rt5640->jd_inverted)
  return !(val & RT5640_JD_STATUS);
 else
  return (val & RT5640_JD_STATUS);
}
