
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int * list; } ;
struct wm8523_priv {int * rate_constraint_list; TYPE_1__ rate_constraint; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int WM8523_DACR_VU ;
 int WM8523_DAC_CTRL3 ;
 int WM8523_DAC_GAINR ;
 int WM8523_ZC ;
 struct wm8523_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int wm8523_probe(struct snd_soc_component *component)
{
 struct wm8523_priv *wm8523 = snd_soc_component_get_drvdata(component);

 wm8523->rate_constraint.list = &wm8523->rate_constraint_list[0];
 wm8523->rate_constraint.count =
  ARRAY_SIZE(wm8523->rate_constraint_list);


 snd_soc_component_update_bits(component, WM8523_DAC_GAINR,
       WM8523_DACR_VU, WM8523_DACR_VU);
 snd_soc_component_update_bits(component, WM8523_DAC_CTRL3, WM8523_ZC, WM8523_ZC);

 return 0;
}
