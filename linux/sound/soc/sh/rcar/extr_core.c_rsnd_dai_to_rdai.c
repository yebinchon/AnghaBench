
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 struct rsnd_priv* rsnd_dai_to_priv (struct snd_soc_dai*) ;
 struct rsnd_dai* rsnd_rdai_get (struct rsnd_priv*,int ) ;

__attribute__((used)) static struct rsnd_dai *rsnd_dai_to_rdai(struct snd_soc_dai *dai)
{
 struct rsnd_priv *priv = rsnd_dai_to_priv(dai);

 return rsnd_rdai_get(priv, dai->id);
}
