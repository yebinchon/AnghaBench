
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct rk3328_codec_priv {int regmap; } ;


 unsigned int HPOUTL_MUTE ;
 int HPOUTL_MUTE_MASK ;
 unsigned int HPOUTL_UNMUTE ;
 unsigned int HPOUTR_MUTE ;
 int HPOUTR_MUTE_MASK ;
 unsigned int HPOUTR_UNMUTE ;
 int HPOUT_CTRL ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct rk3328_codec_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int rk3328_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct rk3328_codec_priv *rk3328 =
  snd_soc_component_get_drvdata(dai->component);
 unsigned int val;

 if (mute)
  val = HPOUTL_MUTE | HPOUTR_MUTE;
 else
  val = HPOUTL_UNMUTE | HPOUTR_UNMUTE;

 regmap_update_bits(rk3328->regmap, HPOUT_CTRL,
      HPOUTL_MUTE_MASK | HPOUTR_MUTE_MASK, val);

 return 0;
}
