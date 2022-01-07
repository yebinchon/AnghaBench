
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rk3328_codec_priv {int dummy; } ;


 int rk3328_codec_close_playback (struct rk3328_codec_priv*) ;
 int rk3328_codec_power_off (struct rk3328_codec_priv*,int ) ;
 struct rk3328_codec_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rk3328_codec_remove(struct snd_soc_component *component)
{
 struct rk3328_codec_priv *rk3328 =
  snd_soc_component_get_drvdata(component);

 rk3328_codec_close_playback(rk3328);
 rk3328_codec_power_off(rk3328, 0);
}
