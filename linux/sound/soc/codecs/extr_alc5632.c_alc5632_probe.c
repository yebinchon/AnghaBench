
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct alc5632_priv {int id; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int alc5632_vol_snd_controls ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct alc5632_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int alc5632_probe(struct snd_soc_component *component)
{
 struct alc5632_priv *alc5632 = snd_soc_component_get_drvdata(component);

 switch (alc5632->id) {
 case 0x5c:
  snd_soc_add_component_controls(component, alc5632_vol_snd_controls,
   ARRAY_SIZE(alc5632_vol_snd_controls));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
