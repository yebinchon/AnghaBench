
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8978_priv {int sysclk; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int WM8978_PLL ;
 struct wm8978_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int * update_reg ;

__attribute__((used)) static int wm8978_probe(struct snd_soc_component *component)
{
 struct wm8978_priv *wm8978 = snd_soc_component_get_drvdata(component);
 int i;





 wm8978->sysclk = WM8978_PLL;






 for (i = 0; i < ARRAY_SIZE(update_reg); i++)
  snd_soc_component_update_bits(component, update_reg[i], 0x100, 0x100);

 return 0;
}
