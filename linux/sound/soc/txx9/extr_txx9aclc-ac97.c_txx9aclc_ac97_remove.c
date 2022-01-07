
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9aclc_plat_drvdata {scalar_t__ base; } ;
struct snd_soc_dai {int dummy; } ;


 scalar_t__ ACCTLDIS ;
 int ACCTL_ENLINK ;
 int __raw_writel (int ,scalar_t__) ;
 struct txx9aclc_plat_drvdata* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int * txx9aclc_drvdata ;

__attribute__((used)) static int txx9aclc_ac97_remove(struct snd_soc_dai *dai)
{
 struct txx9aclc_plat_drvdata *drvdata = snd_soc_dai_get_drvdata(dai);


 __raw_writel(ACCTL_ENLINK, drvdata->base + ACCTLDIS);
 txx9aclc_drvdata = ((void*)0);
 return 0;
}
