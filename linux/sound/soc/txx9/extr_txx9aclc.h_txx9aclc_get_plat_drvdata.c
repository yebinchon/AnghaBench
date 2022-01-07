
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9aclc_plat_drvdata {int dummy; } ;
struct snd_soc_dai {int dev; } ;


 struct txx9aclc_plat_drvdata* dev_get_drvdata (int ) ;

__attribute__((used)) static inline struct txx9aclc_plat_drvdata *txx9aclc_get_plat_drvdata(
 struct snd_soc_dai *dai)
{
 return dev_get_drvdata(dai->dev);
}
