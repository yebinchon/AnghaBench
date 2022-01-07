
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct madera {int dapm_ptr_lock; int * dapm; } ;
struct TYPE_2__ {int * adsp; struct madera* madera; } ;
struct cs47l90 {TYPE_1__ core; } ;


 int CS47L90_NUM_ADSP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cs47l90* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm_adsp2_component_remove (int *,struct snd_soc_component*) ;

__attribute__((used)) static void cs47l90_component_remove(struct snd_soc_component *component)
{
 struct cs47l90 *cs47l90 = snd_soc_component_get_drvdata(component);
 struct madera *madera = cs47l90->core.madera;
 int i;

 mutex_lock(&madera->dapm_ptr_lock);
 madera->dapm = ((void*)0);
 mutex_unlock(&madera->dapm_ptr_lock);

 for (i = 0; i < CS47L90_NUM_ADSP; i++)
  wm_adsp2_component_remove(&cs47l90->core.adsp[i], component);
}
