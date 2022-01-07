
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int active; } ;
struct snd_pcm_substream {int dummy; } ;
struct omap_dmic {int mutex; scalar_t__ active; int pm_qos_req; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_qos_remove_request (int *) ;
 struct omap_dmic* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void omap_dmic_dai_shutdown(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct omap_dmic *dmic = snd_soc_dai_get_drvdata(dai);

 mutex_lock(&dmic->mutex);

 pm_qos_remove_request(&dmic->pm_qos_req);

 if (!dai->active)
  dmic->active = 0;

 mutex_unlock(&dmic->mutex);
}
