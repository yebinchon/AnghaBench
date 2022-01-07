
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {int accdet_lock; int active_refcount; } ;
struct snd_soc_component {int dev; } ;


 int WM1811_JACKDET_MODE_AUDIO ;
 int dev_dbg (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm1811_jackdet_set_mode (struct snd_soc_component*,int ) ;

__attribute__((used)) static void active_reference(struct snd_soc_component *component)
{
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);

 mutex_lock(&wm8994->accdet_lock);

 wm8994->active_refcount++;

 dev_dbg(component->dev, "Active refcount incremented, now %d\n",
  wm8994->active_refcount);


 wm1811_jackdet_set_mode(component, WM1811_JACKDET_MODE_AUDIO);

 mutex_unlock(&wm8994->accdet_lock);
}
