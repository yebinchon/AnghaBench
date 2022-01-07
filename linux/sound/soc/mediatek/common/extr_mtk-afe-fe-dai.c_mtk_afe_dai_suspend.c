
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct regmap {int dummy; } ;
struct mtk_base_afe {int suspended; int reg_back_up_list_num; int (* runtime_suspend ) (struct device*) ;int * reg_back_up; int * reg_back_up_list; struct regmap* regmap; struct device* dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int * devm_kcalloc (struct device*,int,int,int ) ;
 scalar_t__ pm_runtime_status_suspended (struct device*) ;
 int regmap_read (struct regmap*,int ,int *) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int stub1 (struct device*) ;

int mtk_afe_dai_suspend(struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct device *dev = afe->dev;
 struct regmap *regmap = afe->regmap;
 int i;

 if (pm_runtime_status_suspended(dev) || afe->suspended)
  return 0;

 if (!afe->reg_back_up)
  afe->reg_back_up =
   devm_kcalloc(dev, afe->reg_back_up_list_num,
         sizeof(unsigned int), GFP_KERNEL);

 for (i = 0; i < afe->reg_back_up_list_num; i++)
  regmap_read(regmap, afe->reg_back_up_list[i],
       &afe->reg_back_up[i]);

 afe->suspended = 1;
 afe->runtime_suspend(dev);
 return 0;
}
