
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_usp {int regmap; } ;


 int USP_RX_ENA ;
 int USP_RX_FIFO_OP ;
 int USP_TX_RX_ENABLE ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void sirf_usp_rx_disable(struct sirf_usp *usp)
{
 regmap_update_bits(usp->regmap, USP_TX_RX_ENABLE,
  USP_RX_ENA, ~USP_RX_ENA);

 regmap_write(usp->regmap, USP_RX_FIFO_OP, 0);
}
