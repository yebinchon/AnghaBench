
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_i2s {int regmap; } ;


 int TEGRA20_I2S_CTRL ;
 int TEGRA20_I2S_CTRL_FIFO1_ENABLE ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void tegra20_i2s_stop_playback(struct tegra20_i2s *i2s)
{
 regmap_update_bits(i2s->regmap, TEGRA20_I2S_CTRL,
      TEGRA20_I2S_CTRL_FIFO1_ENABLE, 0);
}
