
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta350_priv {int supplies; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 struct sta350_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void sta350_remove(struct snd_soc_component *component)
{
 struct sta350_priv *sta350 = snd_soc_component_get_drvdata(component);

 regulator_bulk_disable(ARRAY_SIZE(sta350->supplies), sta350->supplies);
}
