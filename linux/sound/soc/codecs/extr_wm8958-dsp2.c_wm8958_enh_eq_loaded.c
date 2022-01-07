
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {int fw_lock; struct firmware const* enh_eq; } ;
struct snd_soc_component {int dummy; } ;
struct firmware {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 scalar_t__ wm8958_dsp2_fw (struct snd_soc_component*,char*,struct firmware const*,int) ;

__attribute__((used)) static void wm8958_enh_eq_loaded(const struct firmware *fw, void *context)
{
 struct snd_soc_component *component = context;
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);

 if (fw && (wm8958_dsp2_fw(component, "ENH_EQ", fw, 1) == 0)) {
  mutex_lock(&wm8994->fw_lock);
  wm8994->enh_eq = fw;
  mutex_unlock(&wm8994->fw_lock);
 }
}
