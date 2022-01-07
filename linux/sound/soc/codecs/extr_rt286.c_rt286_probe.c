
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct rt286_priv {int jack_detect_work; int regmap; TYPE_1__* i2c; struct snd_soc_component* component; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int RT286_IRQ_CTRL ;
 int msecs_to_jiffies (int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int rt286_jack_detect_work ;
 int schedule_delayed_work (int *,int ) ;
 struct rt286_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt286_probe(struct snd_soc_component *component)
{
 struct rt286_priv *rt286 = snd_soc_component_get_drvdata(component);

 rt286->component = component;

 if (rt286->i2c->irq) {
  regmap_update_bits(rt286->regmap,
     RT286_IRQ_CTRL, 0x2, 0x2);

  INIT_DELAYED_WORK(&rt286->jack_detect_work,
     rt286_jack_detect_work);
  schedule_delayed_work(&rt286->jack_detect_work,
     msecs_to_jiffies(1250));
 }

 return 0;
}
