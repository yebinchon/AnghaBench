
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct ak4641_priv {scalar_t__ playback_fs; scalar_t__ deemph; } ;


 int AK4641_DAC ;
 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__* deemph_settings ;
 int dev_dbg (int ,char*,int) ;
 struct ak4641_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int ak4641_set_deemph(struct snd_soc_component *component)
{
 struct ak4641_priv *ak4641 = snd_soc_component_get_drvdata(component);
 int i, best = 0;

 for (i = 0 ; i < ARRAY_SIZE(deemph_settings); i++) {

  if (ak4641->deemph && deemph_settings[i] != 0 &&
      abs(deemph_settings[i] - ak4641->playback_fs) <
      abs(deemph_settings[best] - ak4641->playback_fs))
   best = i;

  if (!ak4641->deemph && deemph_settings[i] == 0)
   best = i;
 }

 dev_dbg(component->dev, "Set deemphasis %d\n", best);

 return snd_soc_component_update_bits(component, AK4641_DAC, 0x3, best);
}
