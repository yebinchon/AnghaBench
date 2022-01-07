
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int name; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct mtk_base_afe {struct mt8183_afe_private* platform_priv; } ;
struct mtk_afe_tdm_priv {int mclk_apll; } ;
struct mt8183_afe_private {struct mtk_afe_tdm_priv** dai_priv; } ;


 size_t MT8183_DAI_TDM ;
 int mt8183_get_apll_by_name (struct mtk_base_afe*,int ) ;
 struct mtk_base_afe* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int mtk_afe_tdm_apll_connect(struct snd_soc_dapm_widget *source,
        struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_dapm_widget *w = sink;
 struct snd_soc_component *cmpnt = snd_soc_dapm_to_component(w->dapm);
 struct mtk_base_afe *afe = snd_soc_component_get_drvdata(cmpnt);
 struct mt8183_afe_private *afe_priv = afe->platform_priv;
 struct mtk_afe_tdm_priv *tdm_priv = afe_priv->dai_priv[MT8183_DAI_TDM];
 int cur_apll;


 cur_apll = mt8183_get_apll_by_name(afe, source->name);

 return (tdm_priv->mclk_apll == cur_apll) ? 1 : 0;
}
