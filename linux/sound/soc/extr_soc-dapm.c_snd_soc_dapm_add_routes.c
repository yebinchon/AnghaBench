
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_route {char* control; int sink; int source; } ;
struct snd_soc_dapm_context {TYPE_1__* card; int dev; } ;
struct TYPE_2__ {int dapm_mutex; } ;


 int SND_SOC_DAPM_CLASS_RUNTIME ;
 int dev_err (int ,char*,int ,char*,int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int snd_soc_dapm_add_route (struct snd_soc_dapm_context*,struct snd_soc_dapm_route const*) ;

int snd_soc_dapm_add_routes(struct snd_soc_dapm_context *dapm,
       const struct snd_soc_dapm_route *route, int num)
{
 int i, r, ret = 0;

 mutex_lock_nested(&dapm->card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
 for (i = 0; i < num; i++) {
  r = snd_soc_dapm_add_route(dapm, route);
  if (r < 0) {
   dev_err(dapm->dev, "ASoC: Failed to add route %s -> %s -> %s\n",
    route->source,
    route->control ? route->control : "direct",
    route->sink);
   ret = r;
  }
  route++;
 }
 mutex_unlock(&dapm->card->dapm_mutex);

 return ret;
}
