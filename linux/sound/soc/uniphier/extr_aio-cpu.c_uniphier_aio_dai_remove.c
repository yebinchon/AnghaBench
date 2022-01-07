
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_aio {TYPE_1__* chip; } ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_2__ {scalar_t__ active; } ;


 struct uniphier_aio* uniphier_priv (struct snd_soc_dai*) ;

int uniphier_aio_dai_remove(struct snd_soc_dai *dai)
{
 struct uniphier_aio *aio = uniphier_priv(dai);

 aio->chip->active = 0;

 return 0;
}
