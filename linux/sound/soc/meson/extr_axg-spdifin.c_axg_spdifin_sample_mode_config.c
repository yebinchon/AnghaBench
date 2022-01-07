
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct axg_spdifin {int map; int refclk; TYPE_1__* conf; } ;
struct TYPE_2__ {int ref_rate; } ;


 int FIELD_PREP (int ,unsigned int) ;
 int SPDIFIN_CTRL0 ;
 int SPDIFIN_CTRL0_WIDTH_SEL ;
 int SPDIFIN_CTRL1 ;
 int SPDIFIN_CTRL1_BASE_TIMER ;
 int SPDIFIN_MODE_NUM ;
 unsigned int axg_spdifin_mode_timer (struct axg_spdifin*,int,unsigned int) ;
 int axg_spdifin_write_threshold (int ,int,unsigned int) ;
 int axg_spdifin_write_timer (int ,int,unsigned int) ;
 unsigned int clk_get_rate (int ) ;
 int clk_set_rate (int ,int ) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int axg_spdifin_sample_mode_config(struct snd_soc_dai *dai,
       struct axg_spdifin *priv)
{
 unsigned int rate, t_next;
 int ret, i = SPDIFIN_MODE_NUM - 1;


 ret = clk_set_rate(priv->refclk, priv->conf->ref_rate);
 if (ret) {
  dev_err(dai->dev, "reference clock rate set failed\n");
  return ret;
 }





 rate = clk_get_rate(priv->refclk);


 regmap_update_bits(priv->map, SPDIFIN_CTRL1,
      SPDIFIN_CTRL1_BASE_TIMER,
      FIELD_PREP(SPDIFIN_CTRL1_BASE_TIMER, rate / 1000));


 regmap_update_bits(priv->map, SPDIFIN_CTRL0,
      SPDIFIN_CTRL0_WIDTH_SEL, SPDIFIN_CTRL0_WIDTH_SEL);


 t_next = axg_spdifin_mode_timer(priv, i, rate);
 axg_spdifin_write_timer(priv->map, i, t_next);

 do {
  unsigned int t;

  i -= 1;


  t = axg_spdifin_mode_timer(priv, i, rate);


  axg_spdifin_write_timer(priv->map, i, t);


  axg_spdifin_write_threshold(priv->map, i, t + t_next);


  t_next = t;

 } while (i > 0);

 return 0;
}
