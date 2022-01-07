
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int __wcd9335_codec_enable_micbias (struct snd_soc_dapm_widget*,int) ;

__attribute__((used)) static int wcd9335_codec_enable_micbias(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kc, int event)
{
 return __wcd9335_codec_enable_micbias(w, event);
}
