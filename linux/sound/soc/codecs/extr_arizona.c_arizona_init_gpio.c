
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct arizona_priv {struct arizona* arizona; } ;
struct TYPE_2__ {int* gpio_defaults; } ;
struct arizona {int type; TYPE_1__ pdata; } ;


 int ARIZONA_GPN_FN_MASK ;


 int ARRAY_SIZE (int*) ;


 int snd_soc_component_disable_pin (struct snd_soc_component*,char*) ;
 int snd_soc_component_enable_pin (struct snd_soc_component*,char*) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int arizona_init_gpio(struct snd_soc_component *component)
{
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;
 int i;

 switch (arizona->type) {
 case 129:
 case 128:
  snd_soc_component_disable_pin(component,
           "DRC2 Signal Activity");
  break;
 default:
  break;
 }

 snd_soc_component_disable_pin(component, "DRC1 Signal Activity");

 for (i = 0; i < ARRAY_SIZE(arizona->pdata.gpio_defaults); i++) {
  switch (arizona->pdata.gpio_defaults[i] & ARIZONA_GPN_FN_MASK) {
  case 131:
   snd_soc_component_enable_pin(component,
           "DRC1 Signal Activity");
   break;
  case 130:
   snd_soc_component_enable_pin(component,
           "DRC2 Signal Activity");
   break;
  default:
   break;
  }
 }

 return 0;
}
