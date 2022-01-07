
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tegra_rt5677 {int util_data; } ;
struct snd_soc_card {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_8__ {TYPE_1__* cpus; TYPE_3__* codecs; TYPE_2__* platforms; } ;
struct TYPE_7__ {int * of_node; } ;
struct TYPE_6__ {int * of_node; } ;
struct TYPE_5__ {int * of_node; } ;


 int of_node_put (int *) ;
 struct snd_soc_card* platform_get_drvdata (struct platform_device*) ;
 struct tegra_rt5677* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_unregister_card (struct snd_soc_card*) ;
 int tegra_asoc_utils_fini (int *) ;
 TYPE_4__ tegra_rt5677_dai ;

__attribute__((used)) static int tegra_rt5677_remove(struct platform_device *pdev)
{
 struct snd_soc_card *card = platform_get_drvdata(pdev);
 struct tegra_rt5677 *machine = snd_soc_card_get_drvdata(card);

 snd_soc_unregister_card(card);

 tegra_asoc_utils_fini(&machine->util_data);

 tegra_rt5677_dai.platforms->of_node = ((void*)0);
 of_node_put(tegra_rt5677_dai.codecs->of_node);
 tegra_rt5677_dai.codecs->of_node = ((void*)0);
 of_node_put(tegra_rt5677_dai.cpus->of_node);
 tegra_rt5677_dai.cpus->of_node = ((void*)0);

 return 0;
}
