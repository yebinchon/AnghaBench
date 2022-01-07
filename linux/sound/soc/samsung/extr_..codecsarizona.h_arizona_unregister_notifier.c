
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct notifier_block {int dummy; } ;
struct arizona_priv {struct arizona* arizona; } ;
struct arizona {int notifier; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static inline int arizona_unregister_notifier(struct snd_soc_component *component,
           struct notifier_block *nb)
{
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;

 return blocking_notifier_chain_unregister(&arizona->notifier, nb);
}
