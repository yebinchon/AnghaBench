
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;


 int AUDIO_IC_CODEC_CTRL1 ;
 int msleep (int) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static void enable_and_reset_codec(struct regmap *regmap,
  u32 codec_enable_bits, u32 codec_reset_bits)
{
 regmap_update_bits(regmap, AUDIO_IC_CODEC_CTRL1,
   codec_enable_bits | codec_reset_bits,
   codec_enable_bits);
 msleep(20);
 regmap_update_bits(regmap, AUDIO_IC_CODEC_CTRL1,
   codec_reset_bits, codec_reset_bits);
}
