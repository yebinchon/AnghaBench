
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_base_afe {TYPE_1__* dev; struct mt8183_afe_private* platform_priv; } ;
struct mtk_afe_i2s_priv {int share_i2s_id; } ;
struct mt8183_afe_private {struct mtk_afe_i2s_priv** dai_priv; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {size_t id; char* share_property_name; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int DAI_I2S_NUM ;
 int get_i2s_id_by_name (struct mtk_base_afe*,char const*) ;
 TYPE_2__* mt8183_i2s_priv ;
 scalar_t__ of_property_read_string (struct device_node const*,char const*,char const**) ;

__attribute__((used)) static int mt8183_dai_i2s_get_share(struct mtk_base_afe *afe)
{
 struct mt8183_afe_private *afe_priv = afe->platform_priv;
 const struct device_node *of_node = afe->dev->of_node;
 const char *of_str;
 const char *property_name;
 struct mtk_afe_i2s_priv *i2s_priv;
 int i;

 for (i = 0; i < DAI_I2S_NUM; i++) {
  i2s_priv = afe_priv->dai_priv[mt8183_i2s_priv[i].id];
  property_name = mt8183_i2s_priv[i].share_property_name;
  if (of_property_read_string(of_node, property_name, &of_str))
   continue;
  i2s_priv->share_i2s_id = get_i2s_id_by_name(afe, of_str);
 }

 return 0;
}
