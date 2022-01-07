
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct mxs_saif {int dummy; } ;


 struct mxs_saif* dev_get_drvdata (int ) ;
 int snd_soc_dai_set_drvdata (struct snd_soc_dai*,struct mxs_saif*) ;

__attribute__((used)) static int mxs_saif_dai_probe(struct snd_soc_dai *dai)
{
 struct mxs_saif *saif = dev_get_drvdata(dai->dev);

 snd_soc_dai_set_drvdata(dai, saif);

 return 0;
}
