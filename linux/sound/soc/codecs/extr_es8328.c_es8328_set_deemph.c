
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct es8328_priv {scalar_t__ playback_fs; scalar_t__ deemph; } ;
struct TYPE_3__ {int val; scalar_t__ rate; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ES8328_DACCONTROL6 ;
 int ES8328_DACCONTROL6_DEEMPH_MASK ;
 int ES8328_DACCONTROL6_DEEMPH_OFF ;
 scalar_t__ abs (scalar_t__) ;
 TYPE_1__* deemph_settings ;
 int dev_dbg (int ,char*,int) ;
 struct es8328_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int es8328_set_deemph(struct snd_soc_component *component)
{
 struct es8328_priv *es8328 = snd_soc_component_get_drvdata(component);
 int val, i, best;





 if (es8328->deemph) {
  best = 0;
  for (i = 1; i < ARRAY_SIZE(deemph_settings); i++) {
   if (abs(deemph_settings[i].rate - es8328->playback_fs) <
       abs(deemph_settings[best].rate - es8328->playback_fs))
    best = i;
  }

  val = deemph_settings[best].val;
 } else {
  val = ES8328_DACCONTROL6_DEEMPH_OFF;
 }

 dev_dbg(component->dev, "Set deemphasis %d\n", val);

 return snd_soc_component_update_bits(component, ES8328_DACCONTROL6,
   ES8328_DACCONTROL6_DEEMPH_MASK, val);
}
