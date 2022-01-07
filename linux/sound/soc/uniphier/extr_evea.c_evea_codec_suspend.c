
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct evea_priv {int clk; int clk_exiv; int rst; int rst_exiv; int rst_adamv; } ;


 int clk_disable_unprepare (int ) ;
 int evea_set_power_state_off (struct evea_priv*) ;
 int reset_control_assert (int ) ;
 struct evea_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int evea_codec_suspend(struct snd_soc_component *component)
{
 struct evea_priv *evea = snd_soc_component_get_drvdata(component);

 evea_set_power_state_off(evea);

 reset_control_assert(evea->rst_adamv);
 reset_control_assert(evea->rst_exiv);
 reset_control_assert(evea->rst);

 clk_disable_unprepare(evea->clk_exiv);
 clk_disable_unprepare(evea->clk);

 return 0;
}
