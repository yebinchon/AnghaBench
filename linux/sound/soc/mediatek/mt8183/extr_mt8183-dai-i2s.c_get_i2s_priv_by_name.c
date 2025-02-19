
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {struct mt8183_afe_private* platform_priv; } ;
struct mtk_afe_i2s_priv {int dummy; } ;
struct mt8183_afe_private {struct mtk_afe_i2s_priv** dai_priv; } ;


 int get_i2s_id_by_name (struct mtk_base_afe*,char const*) ;

__attribute__((used)) static struct mtk_afe_i2s_priv *get_i2s_priv_by_name(struct mtk_base_afe *afe,
           const char *name)
{
 struct mt8183_afe_private *afe_priv = afe->platform_priv;
 int dai_id = get_i2s_id_by_name(afe, name);

 if (dai_id < 0)
  return ((void*)0);

 return afe_priv->dai_priv[dai_id];
}
