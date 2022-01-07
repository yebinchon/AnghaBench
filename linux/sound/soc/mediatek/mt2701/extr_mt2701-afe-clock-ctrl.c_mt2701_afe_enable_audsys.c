
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {struct mt2701_afe_private* platform_priv; } ;
struct mt2701_afe_private {int * base_ck; } ;


 size_t MT2701_AUDSYS_A1SYS ;
 size_t MT2701_AUDSYS_A2SYS ;
 size_t MT2701_AUDSYS_AFE ;
 size_t MT2701_AUDSYS_AFE_CONN ;
 size_t MT2701_INFRA_SYS_AUDIO ;
 size_t MT2701_TOP_AUD_A1SYS ;
 size_t MT2701_TOP_AUD_A2SYS ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int mt2701_afe_enable_audsys(struct mtk_base_afe *afe)
{
 struct mt2701_afe_private *afe_priv = afe->platform_priv;
 int ret;


 ret = clk_prepare_enable(afe_priv->base_ck[MT2701_INFRA_SYS_AUDIO]);
 if (ret)
  return ret;


 ret = clk_prepare_enable(afe_priv->base_ck[MT2701_TOP_AUD_A1SYS]);
 if (ret)
  goto err_a1sys;


 ret = clk_prepare_enable(afe_priv->base_ck[MT2701_TOP_AUD_A2SYS]);
 if (ret)
  goto err_a2sys;


 ret = clk_prepare_enable(afe_priv->base_ck[MT2701_AUDSYS_AFE]);
 if (ret)
  goto err_afe;

 ret = clk_prepare_enable(afe_priv->base_ck[MT2701_AUDSYS_A1SYS]);
 if (ret)
  goto err_audio_a1sys;

 ret = clk_prepare_enable(afe_priv->base_ck[MT2701_AUDSYS_A2SYS]);
 if (ret)
  goto err_audio_a2sys;

 ret = clk_prepare_enable(afe_priv->base_ck[MT2701_AUDSYS_AFE_CONN]);
 if (ret)
  goto err_afe_conn;

 return 0;

err_afe_conn:
 clk_disable_unprepare(afe_priv->base_ck[MT2701_AUDSYS_A2SYS]);
err_audio_a2sys:
 clk_disable_unprepare(afe_priv->base_ck[MT2701_AUDSYS_A1SYS]);
err_audio_a1sys:
 clk_disable_unprepare(afe_priv->base_ck[MT2701_AUDSYS_AFE]);
err_afe:
 clk_disable_unprepare(afe_priv->base_ck[MT2701_TOP_AUD_A2SYS]);
err_a2sys:
 clk_disable_unprepare(afe_priv->base_ck[MT2701_TOP_AUD_A1SYS]);
err_a1sys:
 clk_disable_unprepare(afe_priv->base_ck[MT2701_INFRA_SYS_AUDIO]);

 return ret;
}
