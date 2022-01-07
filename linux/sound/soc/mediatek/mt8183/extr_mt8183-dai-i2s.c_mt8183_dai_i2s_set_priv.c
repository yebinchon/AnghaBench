
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_base_afe {int dev; struct mt8183_afe_private* platform_priv; } ;
struct mtk_afe_i2s_priv {int dummy; } ;
struct mt8183_afe_private {struct mtk_afe_i2s_priv** dai_priv; } ;
struct TYPE_3__ {size_t id; } ;


 int DAI_I2S_NUM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct mtk_afe_i2s_priv* devm_kzalloc (int ,int,int ) ;
 int memcpy (struct mtk_afe_i2s_priv*,TYPE_1__*,int) ;
 TYPE_1__* mt8183_i2s_priv ;

__attribute__((used)) static int mt8183_dai_i2s_set_priv(struct mtk_base_afe *afe)
{
 struct mt8183_afe_private *afe_priv = afe->platform_priv;
 struct mtk_afe_i2s_priv *i2s_priv;
 int i;

 for (i = 0; i < DAI_I2S_NUM; i++) {
  i2s_priv = devm_kzalloc(afe->dev,
     sizeof(struct mtk_afe_i2s_priv),
     GFP_KERNEL);
  if (!i2s_priv)
   return -ENOMEM;

  memcpy(i2s_priv, &mt8183_i2s_priv[i],
         sizeof(struct mtk_afe_i2s_priv));

  afe_priv->dai_priv[mt8183_i2s_priv[i].id] = i2s_priv;
 }

 return 0;
}
