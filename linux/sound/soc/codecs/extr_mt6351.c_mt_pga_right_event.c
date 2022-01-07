
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int regmap; } ;
struct snd_kcontrol {int dummy; } ;


 int MT6351_AUDENC_ANA_CON1 ;
 int RG_AUDPREAMPRDCCEN ;
 int RG_AUDPREAMPRDCPRECHARGE ;


 int regmap_update_bits (int ,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mt_pga_right_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol,
         int event)
{
 struct snd_soc_component *cmpnt = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:

  regmap_update_bits(cmpnt->regmap, MT6351_AUDENC_ANA_CON1,
       0x3 << RG_AUDPREAMPRDCPRECHARGE,
       0x1 << RG_AUDPREAMPRDCPRECHARGE);

  regmap_update_bits(cmpnt->regmap, MT6351_AUDENC_ANA_CON1,
       0x3 << RG_AUDPREAMPRDCCEN,
       0x1 << RG_AUDPREAMPRDCCEN);
  break;
 case 129:
  usleep_range(100, 120);

  regmap_update_bits(cmpnt->regmap, MT6351_AUDENC_ANA_CON1,
       0x3 << RG_AUDPREAMPRDCPRECHARGE,
       0x0 << RG_AUDPREAMPRDCPRECHARGE);
  break;
 default:
  break;
 }
 return 0;
}
