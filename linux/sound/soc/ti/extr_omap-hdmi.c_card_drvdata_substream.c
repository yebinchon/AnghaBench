
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct hdmi_audio_data {int dummy; } ;


 struct hdmi_audio_data* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static
struct hdmi_audio_data *card_drvdata_substream(struct snd_pcm_substream *ss)
{
 struct snd_soc_pcm_runtime *rtd = ss->private_data;

 return snd_soc_card_get_drvdata(rtd->card);
}
