
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe_dai {void* num_dapm_routes; void* dapm_routes; void* num_dapm_widgets; void* dapm_widgets; void* num_dai_drivers; void* dai_drivers; int list; } ;
struct mtk_base_afe {int dev; int sub_dais; struct mt8183_afe_private* platform_priv; } ;
struct mtk_afe_tdm_priv {int mclk_multiple; int mclk_id; int bck_id; } ;
struct mt8183_afe_private {struct mtk_afe_tdm_priv** dai_priv; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t MT8183_DAI_TDM ;
 int MT8183_I2S4_BCK ;
 int MT8183_I2S4_MCK ;
 void* devm_kzalloc (int ,int,int ) ;
 int list_add (int *,int *) ;
 void* mtk_dai_tdm_driver ;
 void* mtk_dai_tdm_routes ;
 void* mtk_dai_tdm_widgets ;

int mt8183_dai_tdm_register(struct mtk_base_afe *afe)
{
 struct mt8183_afe_private *afe_priv = afe->platform_priv;
 struct mtk_afe_tdm_priv *tdm_priv;
 struct mtk_base_afe_dai *dai;

 dai = devm_kzalloc(afe->dev, sizeof(*dai), GFP_KERNEL);
 if (!dai)
  return -ENOMEM;

 list_add(&dai->list, &afe->sub_dais);

 dai->dai_drivers = mtk_dai_tdm_driver;
 dai->num_dai_drivers = ARRAY_SIZE(mtk_dai_tdm_driver);

 dai->dapm_widgets = mtk_dai_tdm_widgets;
 dai->num_dapm_widgets = ARRAY_SIZE(mtk_dai_tdm_widgets);
 dai->dapm_routes = mtk_dai_tdm_routes;
 dai->num_dapm_routes = ARRAY_SIZE(mtk_dai_tdm_routes);

 tdm_priv = devm_kzalloc(afe->dev, sizeof(struct mtk_afe_tdm_priv),
    GFP_KERNEL);
 if (!tdm_priv)
  return -ENOMEM;

 tdm_priv->mclk_multiple = 128;
 tdm_priv->bck_id = MT8183_I2S4_BCK;
 tdm_priv->mclk_id = MT8183_I2S4_MCK;

 afe_priv->dai_priv[MT8183_DAI_TDM] = tdm_priv;
 return 0;
}
