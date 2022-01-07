
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct ak4458_priv {int fs; } ;


 int ak4458_init (struct snd_soc_component*) ;
 struct ak4458_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4458_probe(struct snd_soc_component *component)
{
 struct ak4458_priv *ak4458 = snd_soc_component_get_drvdata(component);

 ak4458->fs = 48000;

 return ak4458_init(component);
}
