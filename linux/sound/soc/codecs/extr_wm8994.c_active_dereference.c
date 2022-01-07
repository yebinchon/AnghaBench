
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8994_priv {scalar_t__ active_refcount; int accdet_lock; scalar_t__ mic_detecting; scalar_t__ jack_mic; } ;
struct snd_soc_component {int dev; } ;


 int WM1811_JACKDET_MODE_JACK ;
 int WM1811_JACKDET_MODE_MIC ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm1811_jackdet_set_mode (struct snd_soc_component*,int ) ;

__attribute__((used)) static void active_dereference(struct snd_soc_component *component)
{
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 u16 mode;

 mutex_lock(&wm8994->accdet_lock);

 wm8994->active_refcount--;

 dev_dbg(component->dev, "Active refcount decremented, now %d\n",
  wm8994->active_refcount);

 if (wm8994->active_refcount == 0) {

  if (wm8994->jack_mic || wm8994->mic_detecting)
   mode = WM1811_JACKDET_MODE_MIC;
  else
   mode = WM1811_JACKDET_MODE_JACK;

  wm1811_jackdet_set_mode(component, mode);
 }

 mutex_unlock(&wm8994->accdet_lock);
}
