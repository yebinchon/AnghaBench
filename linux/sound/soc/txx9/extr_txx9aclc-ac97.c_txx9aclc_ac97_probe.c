
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int txx9aclc_drvdata ;

__attribute__((used)) static int txx9aclc_ac97_probe(struct snd_soc_dai *dai)
{
 txx9aclc_drvdata = snd_soc_dai_get_drvdata(dai);
 return 0;
}
