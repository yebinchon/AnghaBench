
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct arizona {int regmap; int dev; } ;
struct TYPE_2__ {int parent; } ;


 int ARIZONA_INTERRUPT_RAW_STATUS_3 ;
 int ARIZONA_OUTPUT_ENABLES_1 ;
 int ARIZONA_SPK_OVERHEAT_STS ;
 int EBUSY ;


 int arizona_out_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ;
 int dev_crit (int ,char*) ;
 struct arizona* dev_get_drvdata (int ) ;
 int regmap_update_bits_async (int ,int ,int,int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int arizona_spk_ev(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol,
     int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona *arizona = dev_get_drvdata(component->dev->parent);
 int val;

 switch (event) {
 case 129:
  val = snd_soc_component_read32(component,
            ARIZONA_INTERRUPT_RAW_STATUS_3);
  if (val & ARIZONA_SPK_OVERHEAT_STS) {
   dev_crit(arizona->dev,
     "Speaker not enabled due to temperature\n");
   return -EBUSY;
  }

  regmap_update_bits_async(arizona->regmap,
      ARIZONA_OUTPUT_ENABLES_1,
      1 << w->shift, 1 << w->shift);
  break;
 case 128:
  regmap_update_bits_async(arizona->regmap,
      ARIZONA_OUTPUT_ENABLES_1,
      1 << w->shift, 0);
  break;
 default:
  break;
 }

 return arizona_out_ev(w, kcontrol, event);
}
