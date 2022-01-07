
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct regmap {int dummy; } ;
struct nau8825 {int high_imped; int dev; struct snd_soc_dapm_context* dapm; struct regmap* regmap; } ;


 int NAU8825_MICBIAS_JKR2 ;
 int NAU8825_MICBIAS_JKSLV ;
 int NAU8825_REG_GENERAL_STATUS ;
 int NAU8825_REG_HSD_CTRL ;
 int NAU8825_REG_MIC_BIAS ;
 int NAU8825_REG_SAR_CTRL ;
 int NAU8825_SAR_INPUT_JKR2 ;
 int NAU8825_SAR_INPUT_JKSLV ;
 int NAU8825_SAR_INPUT_MASK ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_HEADSET ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int nau8825_jack_insert(struct nau8825 *nau8825)
{
 struct regmap *regmap = nau8825->regmap;
 struct snd_soc_dapm_context *dapm = nau8825->dapm;
 int jack_status_reg, mic_detected;
 int type = 0;

 regmap_read(regmap, NAU8825_REG_GENERAL_STATUS, &jack_status_reg);
 mic_detected = (jack_status_reg >> 10) & 3;

 if (mic_detected == 0x3)
  nau8825->high_imped = 1;
 else
  nau8825->high_imped = 0;

 switch (mic_detected) {
 case 0:

  type = SND_JACK_HEADPHONE;
  break;
 case 1:
  dev_dbg(nau8825->dev, "OMTP (micgnd1) mic connected\n");
  type = SND_JACK_HEADSET;


  regmap_update_bits(regmap, NAU8825_REG_HSD_CTRL, 3 << 2,
   1 << 2);

  regmap_update_bits(regmap, NAU8825_REG_MIC_BIAS,
   NAU8825_MICBIAS_JKSLV | NAU8825_MICBIAS_JKR2,
   NAU8825_MICBIAS_JKR2);

  regmap_update_bits(regmap, NAU8825_REG_SAR_CTRL,
   NAU8825_SAR_INPUT_MASK,
   NAU8825_SAR_INPUT_JKR2);

  snd_soc_dapm_force_enable_pin(dapm, "MICBIAS");
  snd_soc_dapm_force_enable_pin(dapm, "SAR");
  snd_soc_dapm_sync(dapm);
  break;
 case 2:
  dev_dbg(nau8825->dev, "CTIA (micgnd2) mic connected\n");
  type = SND_JACK_HEADSET;


  regmap_update_bits(regmap, NAU8825_REG_HSD_CTRL, 3 << 2,
   2 << 2);

  regmap_update_bits(regmap, NAU8825_REG_MIC_BIAS,
   NAU8825_MICBIAS_JKSLV | NAU8825_MICBIAS_JKR2,
   NAU8825_MICBIAS_JKSLV);

  regmap_update_bits(regmap, NAU8825_REG_SAR_CTRL,
   NAU8825_SAR_INPUT_MASK,
   NAU8825_SAR_INPUT_JKSLV);

  snd_soc_dapm_force_enable_pin(dapm, "MICBIAS");
  snd_soc_dapm_force_enable_pin(dapm, "SAR");
  snd_soc_dapm_sync(dapm);
  break;
 case 3:

  dev_err(nau8825->dev, "detection error; disable mic function\n");
  type = SND_JACK_HEADPHONE;
  break;
 }





 return type;
}
