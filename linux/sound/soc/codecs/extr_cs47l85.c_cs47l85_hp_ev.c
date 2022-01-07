
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;




 int cs47l85_hp_post_disable (struct snd_soc_dapm_widget*) ;
 int cs47l85_hp_post_enable (struct snd_soc_dapm_widget*) ;
 int madera_hp_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ;

__attribute__((used)) static int cs47l85_hp_ev(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 int ret;

 switch (event) {
 case 128:
 case 129:
  return madera_hp_ev(w, kcontrol, event);
 case 130:
  ret = madera_hp_ev(w, kcontrol, event);
  if (ret < 0)
   return ret;

  cs47l85_hp_post_enable(w);
  return 0;
 case 131:
  ret = madera_hp_ev(w, kcontrol, event);
  cs47l85_hp_post_disable(w);
  return ret;
 default:
  return -EINVAL;
 }
}
