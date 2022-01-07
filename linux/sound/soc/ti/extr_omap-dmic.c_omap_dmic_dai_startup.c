
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int active; } ;
struct snd_pcm_substream {int dummy; } ;
struct omap_dmic {int active; int mutex; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct omap_dmic* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_dmic_dai_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct omap_dmic *dmic = snd_soc_dai_get_drvdata(dai);
 int ret = 0;

 mutex_lock(&dmic->mutex);

 if (!dai->active)
  dmic->active = 1;
 else
  ret = -EBUSY;

 mutex_unlock(&dmic->mutex);

 return ret;
}
