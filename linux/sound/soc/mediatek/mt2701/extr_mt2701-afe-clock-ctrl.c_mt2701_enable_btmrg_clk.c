
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {struct mt2701_afe_private* platform_priv; } ;
struct mt2701_afe_private {int mrgif_ck; } ;


 int clk_prepare_enable (int ) ;

int mt2701_enable_btmrg_clk(struct mtk_base_afe *afe)
{
 struct mt2701_afe_private *afe_priv = afe->platform_priv;

 return clk_prepare_enable(afe_priv->mrgif_ck);
}
