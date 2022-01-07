
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8960_data {scalar_t__ capless; } ;
struct wm8960_priv {int set_bias_level; struct wm8960_data pdata; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct wm8960_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8960_add_widgets (struct snd_soc_component*) ;
 int wm8960_set_bias_level_capless ;
 int wm8960_set_bias_level_out3 ;
 int wm8960_snd_controls ;

__attribute__((used)) static int wm8960_probe(struct snd_soc_component *component)
{
 struct wm8960_priv *wm8960 = snd_soc_component_get_drvdata(component);
 struct wm8960_data *pdata = &wm8960->pdata;

 if (pdata->capless)
  wm8960->set_bias_level = wm8960_set_bias_level_capless;
 else
  wm8960->set_bias_level = wm8960_set_bias_level_out3;

 snd_soc_add_component_controls(component, wm8960_snd_controls,
         ARRAY_SIZE(wm8960_snd_controls));
 wm8960_add_widgets(component);

 return 0;
}
