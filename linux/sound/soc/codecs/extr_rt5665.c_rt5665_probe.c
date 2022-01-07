
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5665_priv {int calibrate_work; struct snd_soc_component* component; } ;


 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 struct rt5665_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5665_probe(struct snd_soc_component *component)
{
 struct rt5665_priv *rt5665 = snd_soc_component_get_drvdata(component);

 rt5665->component = component;

 schedule_delayed_work(&rt5665->calibrate_work, msecs_to_jiffies(100));

 return 0;
}
