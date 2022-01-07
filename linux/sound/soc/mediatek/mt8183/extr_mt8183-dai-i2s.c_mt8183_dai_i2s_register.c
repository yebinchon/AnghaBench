
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe_dai {void* num_dapm_routes; void* dapm_routes; void* num_dapm_widgets; void* dapm_widgets; void* num_controls; void* controls; void* num_dai_drivers; void* dai_drivers; int list; } ;
struct mtk_base_afe {int sub_dais; int dev; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct mtk_base_afe_dai* devm_kzalloc (int ,int,int ) ;
 int list_add (int *,int *) ;
 int mt8183_dai_i2s_get_share (struct mtk_base_afe*) ;
 int mt8183_dai_i2s_set_priv (struct mtk_base_afe*) ;
 void* mtk_dai_i2s_controls ;
 void* mtk_dai_i2s_driver ;
 void* mtk_dai_i2s_routes ;
 void* mtk_dai_i2s_widgets ;

int mt8183_dai_i2s_register(struct mtk_base_afe *afe)
{
 struct mtk_base_afe_dai *dai;
 int ret;

 dai = devm_kzalloc(afe->dev, sizeof(*dai), GFP_KERNEL);
 if (!dai)
  return -ENOMEM;

 list_add(&dai->list, &afe->sub_dais);

 dai->dai_drivers = mtk_dai_i2s_driver;
 dai->num_dai_drivers = ARRAY_SIZE(mtk_dai_i2s_driver);

 dai->controls = mtk_dai_i2s_controls;
 dai->num_controls = ARRAY_SIZE(mtk_dai_i2s_controls);
 dai->dapm_widgets = mtk_dai_i2s_widgets;
 dai->num_dapm_widgets = ARRAY_SIZE(mtk_dai_i2s_widgets);
 dai->dapm_routes = mtk_dai_i2s_routes;
 dai->num_dapm_routes = ARRAY_SIZE(mtk_dai_i2s_routes);


 ret = mt8183_dai_i2s_set_priv(afe);
 if (ret)
  return ret;


 ret = mt8183_dai_i2s_get_share(afe);
 if (ret)
  return ret;

 return 0;
}
