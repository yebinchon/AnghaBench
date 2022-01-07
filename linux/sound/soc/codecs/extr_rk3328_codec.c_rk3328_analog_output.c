
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3328_codec_priv {int grf; } ;


 unsigned int BIT (int) ;
 int RK3328_GRF_SOC_CON10 ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static void rk3328_analog_output(struct rk3328_codec_priv *rk3328, int mute)
{
 unsigned int val = BIT(17);

 if (mute)
  val |= BIT(1);

 regmap_write(rk3328->grf, RK3328_GRF_SOC_CON10, val);
}
