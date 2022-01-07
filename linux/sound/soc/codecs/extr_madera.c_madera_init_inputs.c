
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {int dummy; } ;


 int madera_configure_input_mode (struct madera*) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int madera_init_inputs(struct snd_soc_component *component)
{
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct madera *madera = priv->madera;

 madera_configure_input_mode(madera);

 return 0;
}
