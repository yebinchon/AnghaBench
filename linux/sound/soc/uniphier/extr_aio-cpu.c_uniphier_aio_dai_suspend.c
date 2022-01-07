
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_aio {TYPE_1__* chip; } ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_2__ {int clk; int rst; int num_wup_aios; } ;


 int clk_disable_unprepare (int ) ;
 int reset_control_assert (int ) ;
 struct uniphier_aio* uniphier_priv (struct snd_soc_dai*) ;

int uniphier_aio_dai_suspend(struct snd_soc_dai *dai)
{
 struct uniphier_aio *aio = uniphier_priv(dai);

 aio->chip->num_wup_aios--;
 if (!aio->chip->num_wup_aios) {
  reset_control_assert(aio->chip->rst);
  clk_disable_unprepare(aio->chip->clk);
 }

 return 0;
}
