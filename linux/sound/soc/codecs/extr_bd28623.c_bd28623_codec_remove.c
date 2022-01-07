
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct bd28623_priv {int dummy; } ;


 int bd28623_power_off (struct bd28623_priv*) ;
 struct bd28623_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void bd28623_codec_remove(struct snd_soc_component *component)
{
 struct bd28623_priv *bd = snd_soc_component_get_drvdata(component);

 bd28623_power_off(bd);
}
