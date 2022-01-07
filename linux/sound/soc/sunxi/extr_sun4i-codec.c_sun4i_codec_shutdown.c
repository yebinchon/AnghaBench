
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_codec {int clk_module; } ;
struct snd_soc_pcm_runtime {int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;


 int clk_disable_unprepare (int ) ;
 struct sun4i_codec* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static void sun4i_codec_shutdown(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct sun4i_codec *scodec = snd_soc_card_get_drvdata(rtd->card);

 clk_disable_unprepare(scodec->clk_module);
}
