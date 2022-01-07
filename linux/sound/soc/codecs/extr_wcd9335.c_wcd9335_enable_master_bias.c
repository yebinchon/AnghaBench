
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int master_bias_users; int regmap; } ;


 int WCD9335_ANA_BIAS ;
 int WCD9335_ANA_BIAS_ENABLE ;
 int WCD9335_ANA_BIAS_EN_MASK ;
 int WCD9335_ANA_BIAS_PRECHRG_CTL_MODE ;
 int WCD9335_ANA_BIAS_PRECHRG_CTL_MODE_MANUAL ;
 int WCD9335_ANA_BIAS_PRECHRG_DISABLE ;
 int WCD9335_ANA_BIAS_PRECHRG_ENABLE ;
 int WCD9335_ANA_BIAS_PRECHRG_EN_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int wcd9335_enable_master_bias(struct wcd9335_codec *wcd)
{
 wcd->master_bias_users++;
 if (wcd->master_bias_users == 1) {
  regmap_update_bits(wcd->regmap, WCD9335_ANA_BIAS,
     WCD9335_ANA_BIAS_EN_MASK,
     WCD9335_ANA_BIAS_ENABLE);
  regmap_update_bits(wcd->regmap, WCD9335_ANA_BIAS,
     WCD9335_ANA_BIAS_PRECHRG_EN_MASK,
     WCD9335_ANA_BIAS_PRECHRG_ENABLE);




  usleep_range(1000, 1100);
  regmap_update_bits(wcd->regmap, WCD9335_ANA_BIAS,
     WCD9335_ANA_BIAS_PRECHRG_EN_MASK,
     WCD9335_ANA_BIAS_PRECHRG_DISABLE);
  regmap_update_bits(wcd->regmap, WCD9335_ANA_BIAS,
    WCD9335_ANA_BIAS_PRECHRG_CTL_MODE,
    WCD9335_ANA_BIAS_PRECHRG_CTL_MODE_MANUAL);
 }

 return 0;
}
