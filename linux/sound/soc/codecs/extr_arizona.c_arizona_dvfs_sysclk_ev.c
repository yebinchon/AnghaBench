
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct arizona_priv {int dvfs_cached; int dvfs_lock; int dvfs_reqs; } ;




 int arizona_dvfs_disable (struct snd_soc_component*) ;
 int arizona_dvfs_enable (struct snd_soc_component*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int arizona_dvfs_sysclk_ev(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 int ret = 0;

 mutex_lock(&priv->dvfs_lock);

 switch (event) {
 case 129:
  if (priv->dvfs_reqs)
   ret = arizona_dvfs_enable(component);

  priv->dvfs_cached = 0;
  break;
 case 128:




  priv->dvfs_cached = 1;

  if (priv->dvfs_reqs)
   ret = arizona_dvfs_disable(component);
  break;
 default:
  break;
 }

 mutex_unlock(&priv->dvfs_lock);
 return ret;
}
