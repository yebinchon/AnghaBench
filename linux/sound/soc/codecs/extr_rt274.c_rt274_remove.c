
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt274_priv {int jack_detect_work; } ;


 int cancel_delayed_work_sync (int *) ;
 struct rt274_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt274_remove(struct snd_soc_component *component)
{
 struct rt274_priv *rt274 = snd_soc_component_get_drvdata(component);

 cancel_delayed_work_sync(&rt274->jack_detect_work);
}
