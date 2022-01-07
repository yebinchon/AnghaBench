
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int name; int dapm; } ;
struct snd_soc_component {int dummy; } ;


 int WM8995_CLOCKING_1 ;
 unsigned int WM8995_SYSCLK_SRC ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int check_clk_sys(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 unsigned int reg;
 const char *clk;

 reg = snd_soc_component_read32(component, WM8995_CLOCKING_1);

 if (reg & WM8995_SYSCLK_SRC)
  clk = "AIF2CLK";
 else
  clk = "AIF1CLK";
 return !strcmp(source->name, clk);
}
