
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {struct mt2701_afe_private* platform_priv; } ;
struct mt2701_afe_private {int mrgif_ck; } ;


 int clk_disable_unprepare (int ) ;

void mt2701_disable_btmrg_clk(struct mtk_base_afe *afe)
{
 struct mt2701_afe_private *afe_priv = afe->platform_priv;

 clk_disable_unprepare(afe_priv->mrgif_ck);
}
