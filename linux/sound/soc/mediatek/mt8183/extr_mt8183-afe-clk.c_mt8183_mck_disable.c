
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_base_afe {struct mt8183_afe_private* platform_priv; } ;
struct mt8183_afe_private {int * clk; } ;
struct TYPE_2__ {int m_sel_id; int div_clk_id; } ;


 int MT8183_I2S5_MCK ;
 int clk_disable_unprepare (int ) ;
 TYPE_1__* mck_div ;

void mt8183_mck_disable(struct mtk_base_afe *afe, int mck_id)
{
 struct mt8183_afe_private *afe_priv = afe->platform_priv;
 int m_sel_id = mck_div[mck_id].m_sel_id;
 int div_clk_id = mck_div[mck_id].div_clk_id;


 if (mck_id == MT8183_I2S5_MCK)
  return;

 clk_disable_unprepare(afe_priv->clk[div_clk_id]);
 if (m_sel_id >= 0)
  clk_disable_unprepare(afe_priv->clk[m_sel_id]);
}
