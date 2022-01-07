
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {struct mt2701_afe_private* platform_priv; } ;
struct mt2701_i2s_path {int mclk_ck; } ;
struct mt2701_afe_private {struct mt2701_i2s_path* i2s_path; } ;


 int clk_disable_unprepare (int ) ;

void mt2701_afe_disable_mclk(struct mtk_base_afe *afe, int id)
{
 struct mt2701_afe_private *afe_priv = afe->platform_priv;
 struct mt2701_i2s_path *i2s_path = &afe_priv->i2s_path[id];

 clk_disable_unprepare(i2s_path->mclk_ck);
}
