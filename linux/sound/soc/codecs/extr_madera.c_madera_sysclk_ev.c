
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct madera_priv {int dummy; } ;


 int madera_spin_sysclk (struct madera_priv*) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int madera_sysclk_ev(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);

 madera_spin_sysclk(priv);

 return 0;
}
