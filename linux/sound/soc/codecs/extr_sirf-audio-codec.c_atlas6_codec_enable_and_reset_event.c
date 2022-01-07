
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct sirf_audio_codec {int regmap; } ;


 int ATLAS6_CODEC_ENABLE_BITS ;
 int ATLAS6_CODEC_RESET_BITS ;
 int AUDIO_IC_CODEC_CTRL1 ;


 int enable_and_reset_codec (int ,int ,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct sirf_audio_codec* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int atlas6_codec_enable_and_reset_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{


 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct sirf_audio_codec *sirf_audio_codec = snd_soc_component_get_drvdata(component);
 switch (event) {
 case 128:
  enable_and_reset_codec(sirf_audio_codec->regmap,
   (1 << 29), (1 << 28));
  break;
 case 129:
  regmap_update_bits(sirf_audio_codec->regmap,
   AUDIO_IC_CODEC_CTRL1, (1 << 29), 0);
  break;
 default:
  break;
 }

 return 0;
}
