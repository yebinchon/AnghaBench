
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chs; } ;
struct wcd_slim_codec_dai_data {TYPE_1__ sconfig; } ;
struct wcd9335_codec {struct wcd_slim_codec_dai_data* dai; } ;
struct snd_soc_dapm_widget {size_t shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int kfree (int ) ;
 struct wcd9335_codec* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wcd9335_codec_enable_int_port (struct wcd_slim_codec_dai_data*,struct snd_soc_component*) ;

__attribute__((used)) static int wcd9335_codec_enable_slim(struct snd_soc_dapm_widget *w,
           struct snd_kcontrol *kc,
           int event)
{
 struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);
 struct wcd9335_codec *wcd = snd_soc_component_get_drvdata(comp);
 struct wcd_slim_codec_dai_data *dai = &wcd->dai[w->shift];

 switch (event) {
 case 128:
  wcd9335_codec_enable_int_port(dai, comp);
  break;
 case 129:
  kfree(dai->sconfig.chs);

  break;
 }

 return 0;
}
