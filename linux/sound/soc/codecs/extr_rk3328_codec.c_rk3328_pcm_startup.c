
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int dummy; } ;
struct rk3328_codec_priv {int dummy; } ;


 int rk3328_codec_open_playback (struct rk3328_codec_priv*) ;
 struct rk3328_codec_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int rk3328_pcm_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct rk3328_codec_priv *rk3328 =
  snd_soc_component_get_drvdata(dai->component);

 return rk3328_codec_open_playback(rk3328);
}
