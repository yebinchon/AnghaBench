
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_stream_config {int dummy; } ;
struct wcd_slim_codec_dai_data {int sruntime; struct slim_stream_config sconfig; } ;
struct wcd9335_codec {struct wcd_slim_codec_dai_data* dai; } ;
struct snd_soc_dai {size_t id; int component; } ;
struct snd_pcm_substream {int dummy; } ;
 int slim_stream_disable (int ) ;
 int slim_stream_enable (int ) ;
 int slim_stream_prepare (int ,struct slim_stream_config*) ;
 int slim_stream_unprepare (int ) ;
 struct wcd9335_codec* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int wcd9335_trigger(struct snd_pcm_substream *substream, int cmd,
      struct snd_soc_dai *dai)
{
 struct wcd_slim_codec_dai_data *dai_data;
 struct wcd9335_codec *wcd;
 struct slim_stream_config *cfg;

 wcd = snd_soc_component_get_drvdata(dai->component);

 dai_data = &wcd->dai[dai->id];

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  cfg = &dai_data->sconfig;
  slim_stream_prepare(dai_data->sruntime, cfg);
  slim_stream_enable(dai_data->sruntime);
  break;
 case 129:
 case 128:
 case 133:
  slim_stream_unprepare(dai_data->sruntime);
  slim_stream_disable(dai_data->sruntime);
  break;
 default:
  break;
 }

 return 0;
}
