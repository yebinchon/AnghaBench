
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_ac97 {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 struct tegra20_ac97* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int tegra20_ac97_start_capture (struct tegra20_ac97*) ;
 int tegra20_ac97_start_playback (struct tegra20_ac97*) ;
 int tegra20_ac97_stop_capture (struct tegra20_ac97*) ;
 int tegra20_ac97_stop_playback (struct tegra20_ac97*) ;

__attribute__((used)) static int tegra20_ac97_trigger(struct snd_pcm_substream *substream, int cmd,
    struct snd_soc_dai *dai)
{
 struct tegra20_ac97 *ac97 = snd_soc_dai_get_drvdata(dai);

 switch (cmd) {
 case 130:
 case 132:
 case 131:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   tegra20_ac97_start_playback(ac97);
  else
   tegra20_ac97_start_capture(ac97);
  break;
 case 129:
 case 133:
 case 128:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   tegra20_ac97_stop_playback(ac97);
  else
   tegra20_ac97_stop_capture(ac97);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
