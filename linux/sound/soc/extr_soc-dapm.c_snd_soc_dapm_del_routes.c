
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_route {int dummy; } ;
struct snd_soc_dapm_context {TYPE_1__* card; } ;
struct TYPE_2__ {int dapm_mutex; } ;


 int SND_SOC_DAPM_CLASS_RUNTIME ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int snd_soc_dapm_del_route (struct snd_soc_dapm_context*,struct snd_soc_dapm_route const*) ;

int snd_soc_dapm_del_routes(struct snd_soc_dapm_context *dapm,
       const struct snd_soc_dapm_route *route, int num)
{
 int i;

 mutex_lock_nested(&dapm->card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
 for (i = 0; i < num; i++) {
  snd_soc_dapm_del_route(dapm, route);
  route++;
 }
 mutex_unlock(&dapm->card->dapm_mutex);

 return 0;
}
