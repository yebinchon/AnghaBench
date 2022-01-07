
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int dapm; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int ARRAY_SIZE (int ) ;
 int aic3x_dapm_widgets ;
 int audio_map ;
 int snd_soc_dapm_add_routes (int *,int ,int ) ;
 int snd_soc_dapm_nc_pin (int *,char*) ;
 int snd_soc_dapm_new_controls (int *,int ,int ) ;
 int snd_soc_of_parse_audio_routing (struct snd_soc_card*,char*) ;

__attribute__((used)) static int evm_aic3x_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_card *card = rtd->card;
 struct device_node *np = card->dev->of_node;
 int ret;


 snd_soc_dapm_new_controls(&card->dapm, aic3x_dapm_widgets,
      ARRAY_SIZE(aic3x_dapm_widgets));

 if (np) {
  ret = snd_soc_of_parse_audio_routing(card, "ti,audio-routing");
  if (ret)
   return ret;
 } else {

  snd_soc_dapm_add_routes(&card->dapm, audio_map,
     ARRAY_SIZE(audio_map));
 }


 snd_soc_dapm_nc_pin(&card->dapm, "MONO_LOUT");
 snd_soc_dapm_nc_pin(&card->dapm, "HPLCOM");
 snd_soc_dapm_nc_pin(&card->dapm, "HPRCOM");

 return 0;
}
