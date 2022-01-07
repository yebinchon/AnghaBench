
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_pdm_dev {int regmap; } ;


 int PDM_DMA_CTRL ;
 int PDM_DMA_RD_DIS ;
 int PDM_DMA_RD_EN ;
 int PDM_DMA_RD_MSK ;
 int PDM_RX_CLR_MASK ;
 int PDM_RX_CLR_WR ;
 int PDM_RX_MASK ;
 int PDM_RX_START ;
 int PDM_RX_STOP ;
 int PDM_SYSCONFIG ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void rockchip_pdm_rxctrl(struct rk_pdm_dev *pdm, int on)
{
 if (on) {
  regmap_update_bits(pdm->regmap, PDM_DMA_CTRL,
       PDM_DMA_RD_MSK, PDM_DMA_RD_EN);
  regmap_update_bits(pdm->regmap, PDM_SYSCONFIG,
       PDM_RX_MASK, PDM_RX_START);
 } else {
  regmap_update_bits(pdm->regmap, PDM_DMA_CTRL,
       PDM_DMA_RD_MSK, PDM_DMA_RD_DIS);
  regmap_update_bits(pdm->regmap, PDM_SYSCONFIG,
       PDM_RX_MASK | PDM_RX_CLR_MASK,
       PDM_RX_STOP | PDM_RX_CLR_WR);
 }
}
