
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_spdif {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;






 struct tegra20_spdif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int tegra20_spdif_start_playback (struct tegra20_spdif*) ;
 int tegra20_spdif_stop_playback (struct tegra20_spdif*) ;

__attribute__((used)) static int tegra20_spdif_trigger(struct snd_pcm_substream *substream, int cmd,
    struct snd_soc_dai *dai)
{
 struct tegra20_spdif *spdif = snd_soc_dai_get_drvdata(dai);

 switch (cmd) {
 case 130:
 case 132:
 case 131:
  tegra20_spdif_start_playback(spdif);
  break;
 case 129:
 case 133:
 case 128:
  tegra20_spdif_stop_playback(spdif);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
