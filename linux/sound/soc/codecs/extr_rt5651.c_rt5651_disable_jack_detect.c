
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5651_priv {int * hp_jack; int irq; } ;


 int SND_JACK_BTN_0 ;
 int disable_irq (int ) ;
 int rt5651_cancel_work (struct rt5651_priv*) ;
 int rt5651_disable_micbias1_for_ovcd (struct snd_soc_component*) ;
 int rt5651_disable_micbias1_ovcd_irq (struct snd_soc_component*) ;
 scalar_t__ rt5651_support_button_press (struct rt5651_priv*) ;
 struct rt5651_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_jack_report (int *,int ,int ) ;

__attribute__((used)) static void rt5651_disable_jack_detect(struct snd_soc_component *component)
{
 struct rt5651_priv *rt5651 = snd_soc_component_get_drvdata(component);

 disable_irq(rt5651->irq);
 rt5651_cancel_work(rt5651);

 if (rt5651_support_button_press(rt5651)) {
  rt5651_disable_micbias1_ovcd_irq(component);
  rt5651_disable_micbias1_for_ovcd(component);
  snd_soc_jack_report(rt5651->hp_jack, 0, SND_JACK_BTN_0);
 }

 rt5651->hp_jack = ((void*)0);
}
