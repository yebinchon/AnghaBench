
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_spdif {int regmap; } ;


 int TEGRA20_SPDIF_CTRL ;
 int TEGRA20_SPDIF_CTRL_TX_EN ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void tegra20_spdif_stop_playback(struct tegra20_spdif *spdif)
{
 regmap_update_bits(spdif->regmap, TEGRA20_SPDIF_CTRL,
      TEGRA20_SPDIF_CTRL_TX_EN, 0);
}
