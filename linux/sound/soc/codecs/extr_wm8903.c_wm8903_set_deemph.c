
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8903_priv {scalar_t__ fs; scalar_t__ deemph; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int WM8903_DAC_DIGITAL_1 ;
 int WM8903_DEEMPH_MASK ;
 int WM8903_DEEMPH_SHIFT ;
 scalar_t__ abs (scalar_t__) ;
 int dev_dbg (int ,char*,int,scalar_t__) ;
 struct wm8903_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 scalar_t__* wm8903_deemph ;

__attribute__((used)) static int wm8903_set_deemph(struct snd_soc_component *component)
{
 struct wm8903_priv *wm8903 = snd_soc_component_get_drvdata(component);
 int val, i, best;




 if (wm8903->deemph) {
  best = 1;
  for (i = 2; i < ARRAY_SIZE(wm8903_deemph); i++) {
   if (abs(wm8903_deemph[i] - wm8903->fs) <
       abs(wm8903_deemph[best] - wm8903->fs))
    best = i;
  }

  val = best << WM8903_DEEMPH_SHIFT;
 } else {
  best = 0;
  val = 0;
 }

 dev_dbg(component->dev, "Set deemphasis %d (%dHz)\n",
  best, wm8903_deemph[best]);

 return snd_soc_component_update_bits(component, WM8903_DAC_DIGITAL_1,
       WM8903_DEEMPH_MASK, val);
}
