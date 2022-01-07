
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int regmap; } ;
struct snd_kcontrol {int dummy; } ;


 int MT6351_AFE_SGEN_CFG0 ;
 int MT6351_AFE_SGEN_CFG1 ;

 int regmap_update_bits (int ,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int mt_sgen_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol,
    int event)
{
 struct snd_soc_component *cmpnt = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  regmap_update_bits(cmpnt->regmap, MT6351_AFE_SGEN_CFG0,
       0xffef, 0x0008);
  regmap_update_bits(cmpnt->regmap, MT6351_AFE_SGEN_CFG1,
       0xffff, 0x0101);
  break;
 default:
  break;
 }

 return 0;
}
