
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct rt274_priv {int jack_detect_work; TYPE_1__* i2c; struct snd_soc_component* component; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int msecs_to_jiffies (int) ;
 int rt274_jack_detect_work ;
 int schedule_delayed_work (int *,int ) ;
 struct rt274_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt274_probe(struct snd_soc_component *component)
{
 struct rt274_priv *rt274 = snd_soc_component_get_drvdata(component);

 rt274->component = component;

 if (rt274->i2c->irq) {
  INIT_DELAYED_WORK(&rt274->jack_detect_work,
     rt274_jack_detect_work);
  schedule_delayed_work(&rt274->jack_detect_work,
     msecs_to_jiffies(1250));
 }

 return 0;
}
