
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta32x_priv {scalar_t__ xti_clk; int supplies; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (scalar_t__) ;
 int regulator_bulk_disable (int ,int ) ;
 struct sta32x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sta32x_watchdog_stop (struct sta32x_priv*) ;

__attribute__((used)) static void sta32x_remove(struct snd_soc_component *component)
{
 struct sta32x_priv *sta32x = snd_soc_component_get_drvdata(component);

 sta32x_watchdog_stop(sta32x);
 regulator_bulk_disable(ARRAY_SIZE(sta32x->supplies), sta32x->supplies);

 if (sta32x->xti_clk)
  clk_disable_unprepare(sta32x->xti_clk);
}
