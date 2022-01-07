
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct max98088_priv {int eq_texts; } ;


 int kfree (int ) ;
 struct max98088_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void max98088_remove(struct snd_soc_component *component)
{
       struct max98088_priv *max98088 = snd_soc_component_get_drvdata(component);

       kfree(max98088->eq_texts);
}
