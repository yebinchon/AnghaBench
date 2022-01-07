
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8731_priv {scalar_t__ playback_fs; scalar_t__ deemph; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int WM8731_APDIGI ;
 scalar_t__ abs (scalar_t__) ;
 int dev_dbg (int ,char*,int,scalar_t__) ;
 struct wm8731_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 scalar_t__* wm8731_deemph ;

__attribute__((used)) static int wm8731_set_deemph(struct snd_soc_component *component)
{
 struct wm8731_priv *wm8731 = snd_soc_component_get_drvdata(component);
 int val, i, best;




 if (wm8731->deemph) {
  best = 1;
  for (i = 2; i < ARRAY_SIZE(wm8731_deemph); i++) {
   if (abs(wm8731_deemph[i] - wm8731->playback_fs) <
       abs(wm8731_deemph[best] - wm8731->playback_fs))
    best = i;
  }

  val = best << 1;
 } else {
  best = 0;
  val = 0;
 }

 dev_dbg(component->dev, "Set deemphasis %d (%dHz)\n",
  best, wm8731_deemph[best]);

 return snd_soc_component_update_bits(component, WM8731_APDIGI, 0x6, val);
}
