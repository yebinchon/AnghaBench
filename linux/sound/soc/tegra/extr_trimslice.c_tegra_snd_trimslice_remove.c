
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_trimslice {int util_data; } ;
struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;


 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 struct tegra_trimslice* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_unregister_card (struct snd_soc_card*) ;
 int tegra_asoc_utils_fini (int *) ;

__attribute__((used)) static int tegra_snd_trimslice_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);
 struct tegra_trimslice *trimslice = snd_soc_card_get_drvdata(card);

 snd_soc_unregister_card(card);

 tegra_asoc_utils_fini(&trimslice->util_data);

 return 0;
}
