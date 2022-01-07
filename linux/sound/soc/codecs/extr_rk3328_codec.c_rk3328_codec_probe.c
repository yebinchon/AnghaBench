
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rk3328_codec_priv {int dummy; } ;


 int rk3328_codec_power_on (struct rk3328_codec_priv*,int ) ;
 int rk3328_codec_reset (struct rk3328_codec_priv*) ;
 struct rk3328_codec_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rk3328_codec_probe(struct snd_soc_component *component)
{
 struct rk3328_codec_priv *rk3328 =
  snd_soc_component_get_drvdata(component);

 rk3328_codec_reset(rk3328);
 rk3328_codec_power_on(rk3328, 0);

 return 0;
}
