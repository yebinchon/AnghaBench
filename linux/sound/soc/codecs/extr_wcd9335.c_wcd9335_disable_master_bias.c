
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {scalar_t__ master_bias_users; int regmap; } ;


 int EINVAL ;
 int WCD9335_ANA_BIAS ;
 int WCD9335_ANA_BIAS_DISABLE ;
 int WCD9335_ANA_BIAS_EN_MASK ;
 int WCD9335_ANA_BIAS_PRECHRG_CTL_MODE ;
 int WCD9335_ANA_BIAS_PRECHRG_CTL_MODE_MANUAL ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int wcd9335_disable_master_bias(struct wcd9335_codec *wcd)
{
 if (wcd->master_bias_users <= 0)
  return -EINVAL;

 wcd->master_bias_users--;
 if (wcd->master_bias_users == 0) {
  regmap_update_bits(wcd->regmap, WCD9335_ANA_BIAS,
    WCD9335_ANA_BIAS_EN_MASK,
    WCD9335_ANA_BIAS_DISABLE);
  regmap_update_bits(wcd->regmap, WCD9335_ANA_BIAS,
    WCD9335_ANA_BIAS_PRECHRG_CTL_MODE,
    WCD9335_ANA_BIAS_PRECHRG_CTL_MODE_MANUAL);
 }
 return 0;
}
