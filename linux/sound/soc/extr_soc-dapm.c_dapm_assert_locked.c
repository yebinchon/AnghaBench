
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {TYPE_1__* card; } ;
struct TYPE_2__ {int dapm_mutex; scalar_t__ instantiated; } ;


 int lockdep_assert_held (int *) ;

__attribute__((used)) static void dapm_assert_locked(struct snd_soc_dapm_context *dapm)
{
 if (dapm->card && dapm->card->instantiated)
  lockdep_assert_held(&dapm->card->dapm_mutex);
}
