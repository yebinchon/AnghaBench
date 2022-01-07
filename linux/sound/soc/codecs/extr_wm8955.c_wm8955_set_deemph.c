
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8955_priv {scalar_t__ fs; scalar_t__ deemph; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int WM8955_DAC_CONTROL ;
 int WM8955_DEEMPH_MASK ;
 int WM8955_DEEMPH_SHIFT ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__* deemph_settings ;
 int dev_dbg (int ,char*,int) ;
 struct wm8955_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int wm8955_set_deemph(struct snd_soc_component *component)
{
 struct wm8955_priv *wm8955 = snd_soc_component_get_drvdata(component);
 int val, i, best;




 if (wm8955->deemph) {
  best = 1;
  for (i = 2; i < ARRAY_SIZE(deemph_settings); i++) {
   if (abs(deemph_settings[i] - wm8955->fs) <
       abs(deemph_settings[best] - wm8955->fs))
    best = i;
  }

  val = best << WM8955_DEEMPH_SHIFT;
 } else {
  val = 0;
 }

 dev_dbg(component->dev, "Set deemphasis %d\n", val);

 return snd_soc_component_update_bits(component, WM8955_DAC_CONTROL,
       WM8955_DEEMPH_MASK, val);
}
