
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt1305_priv {struct snd_soc_component* component; } ;


 int rt1305_reg_init (struct snd_soc_component*) ;
 struct rt1305_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt1305_probe(struct snd_soc_component *component)
{
 struct rt1305_priv *rt1305 = snd_soc_component_get_drvdata(component);

 rt1305->component = component;


 rt1305_reg_init(component);

 return 0;
}
