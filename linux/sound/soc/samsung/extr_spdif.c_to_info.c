
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct samsung_spdif_info {int dummy; } ;


 struct samsung_spdif_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static inline struct samsung_spdif_info *to_info(struct snd_soc_dai *cpu_dai)
{
 return snd_soc_dai_get_drvdata(cpu_dai);
}
