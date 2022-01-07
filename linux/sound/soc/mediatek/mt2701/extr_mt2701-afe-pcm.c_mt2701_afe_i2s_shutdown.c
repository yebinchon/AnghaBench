
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int id; } ;
struct snd_pcm_substream {size_t stream; } ;
struct mtk_base_afe {struct mt2701_afe_private* platform_priv; } ;
struct mt2701_i2s_path {scalar_t__* occupied; } ;
struct mt2701_afe_private {struct mt2701_i2s_path* i2s_path; TYPE_1__* soc; } ;
struct TYPE_2__ {int has_one_heart_mode; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int mt2701_afe_disable_mclk (struct mtk_base_afe*,int) ;
 int mt2701_afe_i2s_path_disable (struct mtk_base_afe*,struct mt2701_i2s_path*,int) ;
 int mt2701_dai_num_to_i2s (struct mtk_base_afe*,int ) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void mt2701_afe_i2s_shutdown(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct mt2701_afe_private *afe_priv = afe->platform_priv;
 int i2s_num = mt2701_dai_num_to_i2s(afe, dai->id);
 struct mt2701_i2s_path *i2s_path;
 bool mode = afe_priv->soc->has_one_heart_mode;

 if (i2s_num < 0)
  return;

 i2s_path = &afe_priv->i2s_path[i2s_num];

 if (i2s_path->occupied[substream->stream])
  i2s_path->occupied[substream->stream] = 0;
 else
  goto exit;

 mt2701_afe_i2s_path_disable(afe, i2s_path, substream->stream);


 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
  mt2701_afe_i2s_path_disable(afe, i2s_path, !substream->stream);

exit:

 mt2701_afe_disable_mclk(afe, mode ? 1 : i2s_num);
}
