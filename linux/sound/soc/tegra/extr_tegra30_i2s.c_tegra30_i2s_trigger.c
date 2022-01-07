
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra30_i2s {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 struct tegra30_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int tegra30_i2s_start_capture (struct tegra30_i2s*) ;
 int tegra30_i2s_start_playback (struct tegra30_i2s*) ;
 int tegra30_i2s_stop_capture (struct tegra30_i2s*) ;
 int tegra30_i2s_stop_playback (struct tegra30_i2s*) ;

__attribute__((used)) static int tegra30_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
    struct snd_soc_dai *dai)
{
 struct tegra30_i2s *i2s = snd_soc_dai_get_drvdata(dai);

 switch (cmd) {
 case 130:
 case 132:
 case 131:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   tegra30_i2s_start_playback(i2s);
  else
   tegra30_i2s_start_capture(i2s);
  break;
 case 129:
 case 133:
 case 128:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   tegra30_i2s_stop_playback(i2s);
  else
   tegra30_i2s_stop_capture(i2s);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
