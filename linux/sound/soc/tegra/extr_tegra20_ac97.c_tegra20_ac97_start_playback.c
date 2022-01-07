
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_ac97 {int regmap; } ;


 int TEGRA20_AC97_CTRL ;
 int TEGRA20_AC97_CTRL_PCM_DAC_EN ;
 int TEGRA20_AC97_CTRL_STM_EN ;
 int TEGRA20_AC97_FIFO1_SCR ;
 int TEGRA20_AC97_FIFO_SCR_PB_QRT_MT_EN ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static inline void tegra20_ac97_start_playback(struct tegra20_ac97 *ac97)
{
 regmap_update_bits(ac97->regmap, TEGRA20_AC97_FIFO1_SCR,
      TEGRA20_AC97_FIFO_SCR_PB_QRT_MT_EN,
      TEGRA20_AC97_FIFO_SCR_PB_QRT_MT_EN);

 regmap_update_bits(ac97->regmap, TEGRA20_AC97_CTRL,
      TEGRA20_AC97_CTRL_PCM_DAC_EN |
      TEGRA20_AC97_CTRL_STM_EN,
      TEGRA20_AC97_CTRL_PCM_DAC_EN |
      TEGRA20_AC97_CTRL_STM_EN);
}
