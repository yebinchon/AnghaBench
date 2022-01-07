
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int reg; int shift; int off_val; int on_val; int dapm; } ;
struct snd_soc_component {int regmap; } ;
struct snd_kcontrol {int dummy; } ;


 int REG_STRIDE ;


 int regmap_update_bits (int ,int,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int mt_reg_set_clr_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol,
    int event)
{
 struct snd_soc_component *cmpnt = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  if (w->on_val) {

   regmap_update_bits(cmpnt->regmap,
        w->reg + REG_STRIDE,
        0x1 << w->shift,
        0x1 << w->shift);
  } else {

   regmap_update_bits(cmpnt->regmap,
        w->reg + REG_STRIDE * 2,
        0x1 << w->shift,
        0x1 << w->shift);
  }
  break;
 case 128:
  if (w->off_val) {

   regmap_update_bits(cmpnt->regmap,
        w->reg + REG_STRIDE,
        0x1 << w->shift,
        0x1 << w->shift);
  } else {

   regmap_update_bits(cmpnt->regmap,
        w->reg + REG_STRIDE * 2,
        0x1 << w->shift,
        0x1 << w->shift);
  }
  break;
 default:
  break;
 }

 return 0;
}
