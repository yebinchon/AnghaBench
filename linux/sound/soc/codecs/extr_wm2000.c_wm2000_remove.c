
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2000_priv {int dummy; } ;
struct snd_soc_component {int dev; } ;


 int ANC_OFF ;
 struct wm2000_priv* dev_get_drvdata (int ) ;
 int wm2000_anc_transition (struct wm2000_priv*,int ) ;

__attribute__((used)) static void wm2000_remove(struct snd_soc_component *component)
{
 struct wm2000_priv *wm2000 = dev_get_drvdata(component->dev);

 wm2000_anc_transition(wm2000, ANC_OFF);
}
