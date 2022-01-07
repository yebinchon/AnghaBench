
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int dapm; } ;


 int snd_soc_dapm_disable_pin (int *,char*) ;
 int snd_soc_dapm_ignore_suspend (int *,char*) ;

__attribute__((used)) static int neo1973_wm8753_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_card *card = rtd->card;


 snd_soc_dapm_disable_pin(&card->dapm, "GSM Line Out");
 snd_soc_dapm_disable_pin(&card->dapm, "GSM Line In");
 snd_soc_dapm_disable_pin(&card->dapm, "Headset Mic");
 snd_soc_dapm_disable_pin(&card->dapm, "Handset Mic");
 snd_soc_dapm_disable_pin(&card->dapm, "Stereo Out");
 snd_soc_dapm_disable_pin(&card->dapm, "Handset Spk");


 snd_soc_dapm_ignore_suspend(&card->dapm, "GSM Line Out");
 snd_soc_dapm_ignore_suspend(&card->dapm, "GSM Line In");
 snd_soc_dapm_ignore_suspend(&card->dapm, "Headset Mic");
 snd_soc_dapm_ignore_suspend(&card->dapm, "Handset Mic");
 snd_soc_dapm_ignore_suspend(&card->dapm, "Stereo Out");
 snd_soc_dapm_ignore_suspend(&card->dapm, "Handset Spk");

 return 0;
}
