
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aio_chip {struct uniphier_aio* aios; } ;
struct uniphier_aio {int dummy; } ;
struct snd_soc_dai {size_t id; } ;


 struct uniphier_aio_chip* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static inline struct uniphier_aio *uniphier_priv(struct snd_soc_dai *dai)
{
 struct uniphier_aio_chip *chip = snd_soc_dai_get_drvdata(dai);

 return &chip->aios[dai->id];
}
