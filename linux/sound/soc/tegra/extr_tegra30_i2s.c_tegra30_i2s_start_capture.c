
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra30_i2s {int regmap; int capture_fifo_cif; } ;


 int TEGRA30_I2S_CTRL ;
 int TEGRA30_I2S_CTRL_XFER_EN_RX ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int tegra30_ahub_enable_rx_fifo (int ) ;

__attribute__((used)) static void tegra30_i2s_start_capture(struct tegra30_i2s *i2s)
{
 tegra30_ahub_enable_rx_fifo(i2s->capture_fifo_cif);
 regmap_update_bits(i2s->regmap, TEGRA30_I2S_CTRL,
      TEGRA30_I2S_CTRL_XFER_EN_RX,
      TEGRA30_I2S_CTRL_XFER_EN_RX);
}
