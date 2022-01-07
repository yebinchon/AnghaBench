
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cx20442_priv {unsigned int reg_cache; } ;


 unsigned int EINVAL ;
 struct cx20442_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static unsigned int cx20442_read_reg_cache(struct snd_soc_component *component,
        unsigned int reg)
{
 struct cx20442_priv *cx20442 = snd_soc_component_get_drvdata(component);

 if (reg >= 1)
  return -EINVAL;

 return cx20442->reg_cache;
}
