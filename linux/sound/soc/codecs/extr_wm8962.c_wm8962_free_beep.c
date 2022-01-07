
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {int * beep; int beep_work; } ;
struct snd_soc_component {int dev; } ;


 int WM8962_BEEP_ENA ;
 int WM8962_BEEP_GENERATOR_1 ;
 int cancel_work_sync (int *) ;
 int dev_attr_beep ;
 int device_remove_file (int ,int *) ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void wm8962_free_beep(struct snd_soc_component *component)
{
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);

 device_remove_file(component->dev, &dev_attr_beep);
 cancel_work_sync(&wm8962->beep_work);
 wm8962->beep = ((void*)0);

 snd_soc_component_update_bits(component, WM8962_BEEP_GENERATOR_1, WM8962_BEEP_ENA,0);
}
