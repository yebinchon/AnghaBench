
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct evea_priv {int clk; int clk_exiv; int rst; int rst_exiv; int rst_adamv; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int evea_set_power_state_on (struct evea_priv*) ;
 int evea_update_switch_all (struct evea_priv*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 struct evea_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int evea_codec_resume(struct snd_soc_component *component)
{
 struct evea_priv *evea = snd_soc_component_get_drvdata(component);
 int ret;

 ret = clk_prepare_enable(evea->clk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(evea->clk_exiv);
 if (ret)
  goto err_out_clock;

 ret = reset_control_deassert(evea->rst);
 if (ret)
  goto err_out_clock_exiv;

 ret = reset_control_deassert(evea->rst_exiv);
 if (ret)
  goto err_out_reset;

 ret = reset_control_deassert(evea->rst_adamv);
 if (ret)
  goto err_out_reset_exiv;

 evea_set_power_state_on(evea);
 evea_update_switch_all(evea);

 return 0;

err_out_reset_exiv:
 reset_control_assert(evea->rst_exiv);

err_out_reset:
 reset_control_assert(evea->rst);

err_out_clock_exiv:
 clk_disable_unprepare(evea->clk_exiv);

err_out_clock:
 clk_disable_unprepare(evea->clk);

 return ret;
}
