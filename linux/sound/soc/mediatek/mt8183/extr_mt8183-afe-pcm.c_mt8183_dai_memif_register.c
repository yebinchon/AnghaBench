
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe_dai {void* num_dapm_routes; void* dapm_routes; void* num_dapm_widgets; void* dapm_widgets; void* num_dai_drivers; void* dai_drivers; int list; } ;
struct mtk_base_afe {int sub_dais; int dev; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct mtk_base_afe_dai* devm_kzalloc (int ,int,int ) ;
 int list_add (int *,int *) ;
 void* mt8183_memif_dai_driver ;
 void* mt8183_memif_routes ;
 void* mt8183_memif_widgets ;

__attribute__((used)) static int mt8183_dai_memif_register(struct mtk_base_afe *afe)
{
 struct mtk_base_afe_dai *dai;

 dai = devm_kzalloc(afe->dev, sizeof(*dai), GFP_KERNEL);
 if (!dai)
  return -ENOMEM;

 list_add(&dai->list, &afe->sub_dais);

 dai->dai_drivers = mt8183_memif_dai_driver;
 dai->num_dai_drivers = ARRAY_SIZE(mt8183_memif_dai_driver);

 dai->dapm_widgets = mt8183_memif_widgets;
 dai->num_dapm_widgets = ARRAY_SIZE(mt8183_memif_widgets);
 dai->dapm_routes = mt8183_memif_routes;
 dai->num_dapm_routes = ARRAY_SIZE(mt8183_memif_routes);
 return 0;
}
