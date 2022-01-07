
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct axg_pdm {int pclk; int sysclk; int map; TYPE_1__* cfg; } ;
struct TYPE_2__ {int sys_rate; } ;


 int PDM_CTRL ;
 int PDM_CTRL_BYPASS_MODE ;
 int axg_pdm_disable (int ) ;
 int axg_pdm_set_hcic_ctrl (struct axg_pdm*) ;
 int axg_pdm_set_hpf_ctrl (struct axg_pdm*) ;
 int axg_pdm_set_lpf_filters (struct axg_pdm*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct axg_pdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_pdm_dai_probe(struct snd_soc_dai *dai)
{
 struct axg_pdm *priv = snd_soc_dai_get_drvdata(dai);
 int ret;

 ret = clk_prepare_enable(priv->pclk);
 if (ret) {
  dev_err(dai->dev, "enabling pclk failed\n");
  return ret;
 }





 ret = clk_set_rate(priv->sysclk, priv->cfg->sys_rate);
 if (ret) {
  dev_err(dai->dev, "setting sysclk failed\n");
  goto err_pclk;
 }

 ret = clk_prepare_enable(priv->sysclk);
 if (ret) {
  dev_err(dai->dev, "enabling sysclk failed\n");
  goto err_pclk;
 }


 axg_pdm_disable(priv->map);


 regmap_update_bits(priv->map, PDM_CTRL, PDM_CTRL_BYPASS_MODE, 0);


 axg_pdm_set_hcic_ctrl(priv);
 axg_pdm_set_hpf_ctrl(priv);

 ret = axg_pdm_set_lpf_filters(priv);
 if (ret) {
  dev_err(dai->dev, "invalid filter configuration\n");
  goto err_sysclk;
 }

 return 0;

err_sysclk:
 clk_disable_unprepare(priv->sysclk);
err_pclk:
 clk_disable_unprepare(priv->pclk);
 return ret;
}
