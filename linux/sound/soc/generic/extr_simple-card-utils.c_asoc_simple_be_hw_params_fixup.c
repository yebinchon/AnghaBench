
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int num; int card; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct simple_dai_props {int adata; } ;
struct asoc_simple_priv {int dummy; } ;


 int asoc_simple_convert_fixup (int *,struct snd_pcm_hw_params*) ;
 struct simple_dai_props* simple_priv_to_props (struct asoc_simple_priv*,int ) ;
 struct asoc_simple_priv* snd_soc_card_get_drvdata (int ) ;

int asoc_simple_be_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
       struct snd_pcm_hw_params *params)
{
 struct asoc_simple_priv *priv = snd_soc_card_get_drvdata(rtd->card);
 struct simple_dai_props *dai_props = simple_priv_to_props(priv, rtd->num);

 asoc_simple_convert_fixup(&dai_props->adata, params);

 return 0;
}
