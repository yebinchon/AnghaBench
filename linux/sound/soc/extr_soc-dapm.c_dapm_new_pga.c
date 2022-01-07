
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int num_kcontrols; } ;


 int dapm_create_or_share_kcontrol (struct snd_soc_dapm_widget*,int) ;

__attribute__((used)) static int dapm_new_pga(struct snd_soc_dapm_widget *w)
{
 int i, ret;

 for (i = 0; i < w->num_kcontrols; i++) {
  ret = dapm_create_or_share_kcontrol(w, i);
  if (ret < 0)
   return ret;
 }

 return 0;
}
