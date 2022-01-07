
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int cpu_dai; int codec_dai; int num; int card; } ;
struct simple_dai_props {int cpu_dai; int codec_dai; } ;
struct asoc_simple_priv {int dummy; } ;


 int asoc_simple_init_dai (int ,int ) ;
 struct simple_dai_props* simple_priv_to_props (struct asoc_simple_priv*,int ) ;
 struct asoc_simple_priv* snd_soc_card_get_drvdata (int ) ;

int asoc_simple_dai_init(struct snd_soc_pcm_runtime *rtd)
{
 struct asoc_simple_priv *priv = snd_soc_card_get_drvdata(rtd->card);
 struct simple_dai_props *dai_props = simple_priv_to_props(priv, rtd->num);
 int ret;

 ret = asoc_simple_init_dai(rtd->codec_dai,
       dai_props->codec_dai);
 if (ret < 0)
  return ret;

 ret = asoc_simple_init_dai(rtd->cpu_dai,
       dai_props->cpu_dai);
 if (ret < 0)
  return ret;

 return 0;
}
