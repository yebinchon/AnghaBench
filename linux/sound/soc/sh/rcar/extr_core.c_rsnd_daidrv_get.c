
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_driver {int dummy; } ;
struct rsnd_priv {struct snd_soc_dai_driver* daidrv; } ;


 int rsnd_rdai_nr (struct rsnd_priv*) ;

__attribute__((used)) static struct snd_soc_dai_driver
*rsnd_daidrv_get(struct rsnd_priv *priv, int id)
{
 if ((id < 0) || (id >= rsnd_rdai_nr(priv)))
  return ((void*)0);

 return priv->daidrv + id;
}
