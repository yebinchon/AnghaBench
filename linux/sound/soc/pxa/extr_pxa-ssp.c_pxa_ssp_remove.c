
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_priv {int ssp; } ;
struct snd_soc_dai {int dummy; } ;


 int kfree (struct ssp_priv*) ;
 int pxa_ssp_free (int ) ;
 struct ssp_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int pxa_ssp_remove(struct snd_soc_dai *dai)
{
 struct ssp_priv *priv = snd_soc_dai_get_drvdata(dai);

 pxa_ssp_free(priv->ssp);
 kfree(priv);
 return 0;
}
