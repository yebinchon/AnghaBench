
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct mt6358_priv {int mtkaif_protocol; } ;


 struct mt6358_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int mt6358_set_mtkaif_protocol(struct snd_soc_component *cmpnt,
          int mtkaif_protocol)
{
 struct mt6358_priv *priv = snd_soc_component_get_drvdata(cmpnt);

 priv->mtkaif_protocol = mtkaif_protocol;
 return 0;
}
