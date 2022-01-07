
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int name; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct adav80x {int clk_src; } ;





 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int adav80x_dapm_sysclk_check(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);
 const char *clk;

 switch (adav80x->clk_src) {
 case 130:
  clk = "PLL1";
  break;
 case 129:
  clk = "PLL2";
  break;
 case 128:
  clk = "OSC";
  break;
 default:
  return 0;
 }

 return strcmp(source->name, clk) == 0;
}
