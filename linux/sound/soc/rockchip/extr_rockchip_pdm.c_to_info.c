
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct rk_pdm_dev {int dummy; } ;


 struct rk_pdm_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static inline struct rk_pdm_dev *to_info(struct snd_soc_dai *dai)
{
 return snd_soc_dai_get_drvdata(dai);
}
