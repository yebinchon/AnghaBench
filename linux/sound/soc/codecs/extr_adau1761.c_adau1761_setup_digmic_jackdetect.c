
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct adau1761_platform_data {int digmic_jackdetect_pin_mode; int jackdetect_debounce_time; int jackdetect_active_low; } ;
struct adau {int regmap; } ;
typedef enum adau1761_digmic_jackdet_pin_mode { ____Placeholder_adau1761_digmic_jackdet_pin_mode } adau1761_digmic_jackdet_pin_mode ;
struct TYPE_2__ {struct adau1761_platform_data* platform_data; } ;


 int ADAU1761_DIGMIC_JACKDETECT ;
 unsigned int ADAU1761_DIGMIC_JACKDETECT_ACTIVE_LOW ;
 unsigned int ADAU1761_DIGMIC_JACKDETECT_DIGMIC ;







 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int adau1761_dmic_routes ;
 int adau1761_dmic_widgets ;
 int adau1761_jack_detect_controls ;
 int adau1761_no_dmic_routes ;
 int regmap_write (int ,int ,unsigned int) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int adau1761_setup_digmic_jackdetect(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct adau1761_platform_data *pdata = component->dev->platform_data;
 struct adau *adau = snd_soc_component_get_drvdata(component);
 enum adau1761_digmic_jackdet_pin_mode mode;
 unsigned int val = 0;
 int ret;

 if (pdata)
  mode = pdata->digmic_jackdetect_pin_mode;
 else
  mode = 132;

 switch (mode) {
 case 133:
  switch (pdata->jackdetect_debounce_time) {
  case 128:
  case 131:
  case 130:
  case 129:
   val |= pdata->jackdetect_debounce_time << 6;
   break;
  default:
   return -EINVAL;
  }
  if (pdata->jackdetect_active_low)
   val |= ADAU1761_DIGMIC_JACKDETECT_ACTIVE_LOW;

  ret = snd_soc_add_component_controls(component,
   adau1761_jack_detect_controls,
   ARRAY_SIZE(adau1761_jack_detect_controls));
  if (ret)
   return ret;

 case 132:
  ret = snd_soc_dapm_add_routes(dapm, adau1761_no_dmic_routes,
   ARRAY_SIZE(adau1761_no_dmic_routes));
  if (ret)
   return ret;
  break;
 case 134:
  ret = snd_soc_dapm_new_controls(dapm, adau1761_dmic_widgets,
   ARRAY_SIZE(adau1761_dmic_widgets));
  if (ret)
   return ret;

  ret = snd_soc_dapm_add_routes(dapm, adau1761_dmic_routes,
   ARRAY_SIZE(adau1761_dmic_routes));
  if (ret)
   return ret;

  val |= ADAU1761_DIGMIC_JACKDETECT_DIGMIC;
  break;
 default:
  return -EINVAL;
 }

 regmap_write(adau->regmap, ADAU1761_DIGMIC_JACKDETECT, val);

 return 0;
}
