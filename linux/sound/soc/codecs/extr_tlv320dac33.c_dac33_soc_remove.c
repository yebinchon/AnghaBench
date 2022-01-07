
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {scalar_t__ irq; int work; int component; } ;
struct snd_soc_component {int dummy; } ;


 int flush_work (int *) ;
 int free_irq (scalar_t__,int ) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void dac33_soc_remove(struct snd_soc_component *component)
{
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);

 if (dac33->irq >= 0) {
  free_irq(dac33->irq, dac33->component);
  flush_work(&dac33->work);
 }
}
