
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt1308_priv {struct snd_soc_component* component; } ;


 int rt1308_reg_init (struct snd_soc_component*) ;
 struct rt1308_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt1308_probe(struct snd_soc_component *component)
{
 struct rt1308_priv *rt1308 = snd_soc_component_get_drvdata(component);

 rt1308->component = component;

 return rt1308_reg_init(component);
}
