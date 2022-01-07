
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int dev; int version; struct regmap* regmap; } ;
struct regmap {int dummy; } ;


 int EINVAL ;
 int WCD9335_BIAS_VBG_FINE_ADJ ;
 int WCD9335_CHIP_TIER_CTRL_CHIP_ID_BYTE0 ;
 int WCD9335_CHIP_TIER_CTRL_EFUSE_VAL_OUT0 ;
 int WCD9335_CODEC_RPM_PWR_CDC_DIG_HM_CTL ;
 int WCD9335_CODEC_RPM_RST_CTL ;
 int WCD9335_SIDO_SIDO_CCL_8 ;
 int WCD9335_SIDO_SIDO_TEST_2 ;
 int WCD9335_VERSION_2_0 ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int wcd9335_bring_up(struct wcd9335_codec *wcd)
{
 struct regmap *rm = wcd->regmap;
 int val, byte0;

 regmap_read(rm, WCD9335_CHIP_TIER_CTRL_EFUSE_VAL_OUT0, &val);
 regmap_read(rm, WCD9335_CHIP_TIER_CTRL_CHIP_ID_BYTE0, &byte0);

 if ((val < 0) || (byte0 < 0)) {
  dev_err(wcd->dev, "WCD9335 CODEC version detection fail!\n");
  return -EINVAL;
 }

 if (byte0 == 0x1) {
  dev_info(wcd->dev, "WCD9335 CODEC version is v2.0\n");
  wcd->version = WCD9335_VERSION_2_0;
  regmap_write(rm, WCD9335_CODEC_RPM_RST_CTL, 0x01);
  regmap_write(rm, WCD9335_SIDO_SIDO_TEST_2, 0x00);
  regmap_write(rm, WCD9335_SIDO_SIDO_CCL_8, 0x6F);
  regmap_write(rm, WCD9335_BIAS_VBG_FINE_ADJ, 0x65);
  regmap_write(rm, WCD9335_CODEC_RPM_PWR_CDC_DIG_HM_CTL, 0x5);
  regmap_write(rm, WCD9335_CODEC_RPM_PWR_CDC_DIG_HM_CTL, 0x7);
  regmap_write(rm, WCD9335_CODEC_RPM_PWR_CDC_DIG_HM_CTL, 0x3);
  regmap_write(rm, WCD9335_CODEC_RPM_RST_CTL, 0x3);
 } else {
  dev_err(wcd->dev, "WCD9335 CODEC version not supported\n");
  return -EINVAL;
 }

 return 0;
}
