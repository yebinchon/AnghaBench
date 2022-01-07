
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dapm; } ;


 int snd_soc_dapm_ignore_suspend (int *,char*) ;

__attribute__((used)) static int speyside_late_probe(struct snd_soc_card *card)
{
 snd_soc_dapm_ignore_suspend(&card->dapm, "Headphone");
 snd_soc_dapm_ignore_suspend(&card->dapm, "Headset Mic");
 snd_soc_dapm_ignore_suspend(&card->dapm, "Main AMIC");
 snd_soc_dapm_ignore_suspend(&card->dapm, "Main DMIC");
 snd_soc_dapm_ignore_suspend(&card->dapm, "Main Speaker");
 snd_soc_dapm_ignore_suspend(&card->dapm, "WM1250 Output");
 snd_soc_dapm_ignore_suspend(&card->dapm, "WM1250 Input");

 return 0;
}
