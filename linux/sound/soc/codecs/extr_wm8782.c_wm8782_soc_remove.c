
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8782_priv {int supplies; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 struct wm8782_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void wm8782_soc_remove(struct snd_soc_component *component)
{
 struct wm8782_priv *priv = snd_soc_component_get_drvdata(component);
 regulator_bulk_disable(ARRAY_SIZE(priv->supplies), priv->supplies);
}
