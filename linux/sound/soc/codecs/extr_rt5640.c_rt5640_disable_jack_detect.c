
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct rt5640_priv {TYPE_1__* jack; int irq; } ;
struct TYPE_2__ {int status; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_MICROPHONE ;
 int disable_irq (int ) ;
 int rt5640_cancel_work (struct rt5640_priv*) ;
 int rt5640_disable_micbias1_for_ovcd (struct snd_soc_component*) ;
 int rt5640_disable_micbias1_ovcd_irq (struct snd_soc_component*) ;
 struct rt5640_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_jack_report (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void rt5640_disable_jack_detect(struct snd_soc_component *component)
{
 struct rt5640_priv *rt5640 = snd_soc_component_get_drvdata(component);

 disable_irq(rt5640->irq);
 rt5640_cancel_work(rt5640);

 if (rt5640->jack->status & SND_JACK_MICROPHONE) {
  rt5640_disable_micbias1_ovcd_irq(component);
  rt5640_disable_micbias1_for_ovcd(component);
  snd_soc_jack_report(rt5640->jack, 0, SND_JACK_BTN_0);
 }

 rt5640->jack = ((void*)0);
}
