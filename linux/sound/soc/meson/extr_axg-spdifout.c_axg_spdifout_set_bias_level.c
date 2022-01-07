
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct axg_spdifout {int mclk; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct axg_spdifout* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int axg_spdifout_set_bias_level(struct snd_soc_component *component,
           enum snd_soc_bias_level level)
{
 struct axg_spdifout *priv = snd_soc_component_get_drvdata(component);
 enum snd_soc_bias_level now =
  snd_soc_component_get_bias_level(component);
 int ret = 0;

 switch (level) {
 case 129:
  if (now == 128)
   ret = clk_prepare_enable(priv->mclk);
  break;

 case 128:
  if (now == 129)
   clk_disable_unprepare(priv->mclk);
  break;

 case 131:
 case 130:
  break;
 }

 return ret;
}
