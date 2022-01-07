
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2000_priv {int dummy; } ;
struct snd_soc_component {int dev; } ;


 struct wm2000_priv* dev_get_drvdata (int ) ;
 int wm2000_anc_set_mode (struct wm2000_priv*) ;

__attribute__((used)) static int wm2000_probe(struct snd_soc_component *component)
{
 struct wm2000_priv *wm2000 = dev_get_drvdata(component->dev);


 wm2000_anc_set_mode(wm2000);

 return 0;
}
