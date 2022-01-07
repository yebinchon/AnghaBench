
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_card* card; TYPE_1__* codec_dai; } ;
struct snd_soc_dapm_route {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_5__ {int idle_bias_off; } ;
struct snd_soc_card {TYPE_2__ dapm; int dev; } ;
struct TYPE_4__ {struct snd_soc_component* component; } ;


 int ARRAY_SIZE (struct snd_soc_dapm_route*) ;

 int BYT_RT5640_DMIC_EN ;

 int BYT_RT5640_MAP (int) ;
 struct snd_soc_dapm_route* byt_rt5640_controls ;
 struct snd_soc_dapm_route* byt_rt5640_intmic_dmic1_map ;
 struct snd_soc_dapm_route* byt_rt5640_intmic_dmic2_map ;
 struct snd_soc_dapm_route* byt_rt5640_intmic_in1_map ;
 int byt_rt5640_quirk ;
 int byt_rt5640_quirk_table ;
 int dev_err (int ,char*) ;
 int dmi_check_system (int ) ;
 int rt5640_dmic_enable (struct snd_soc_component*,int ,int ) ;
 int snd_soc_add_card_controls (struct snd_soc_card*,struct snd_soc_dapm_route*,int) ;
 int snd_soc_dapm_add_routes (TYPE_2__*,struct snd_soc_dapm_route const*,int) ;
 int snd_soc_dapm_ignore_suspend (TYPE_2__*,char*) ;

__attribute__((used)) static int byt_rt5640_init(struct snd_soc_pcm_runtime *runtime)
{
 int ret;
 struct snd_soc_component *component = runtime->codec_dai->component;
 struct snd_soc_card *card = runtime->card;
 const struct snd_soc_dapm_route *custom_map;
 int num_routes;

 card->dapm.idle_bias_off = 1;

 ret = snd_soc_add_card_controls(card, byt_rt5640_controls,
     ARRAY_SIZE(byt_rt5640_controls));
 if (ret) {
  dev_err(card->dev, "unable to add card controls\n");
  return ret;
 }

 dmi_check_system(byt_rt5640_quirk_table);
 switch (BYT_RT5640_MAP(byt_rt5640_quirk)) {
 case 128:
  custom_map = byt_rt5640_intmic_in1_map;
  num_routes = ARRAY_SIZE(byt_rt5640_intmic_in1_map);
  break;
 case 129:
  custom_map = byt_rt5640_intmic_dmic2_map;
  num_routes = ARRAY_SIZE(byt_rt5640_intmic_dmic2_map);
  break;
 default:
  custom_map = byt_rt5640_intmic_dmic1_map;
  num_routes = ARRAY_SIZE(byt_rt5640_intmic_dmic1_map);
 }

 ret = snd_soc_dapm_add_routes(&card->dapm, custom_map, num_routes);
 if (ret)
  return ret;

 if (byt_rt5640_quirk & BYT_RT5640_DMIC_EN) {
  ret = rt5640_dmic_enable(component, 0, 0);
  if (ret)
   return ret;
 }

 snd_soc_dapm_ignore_suspend(&card->dapm, "Headphone");
 snd_soc_dapm_ignore_suspend(&card->dapm, "Speaker");

 return ret;
}
