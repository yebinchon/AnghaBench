
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BYT_RT5640_DIFF_MIC ;




 scalar_t__ BYT_RT5640_JDSRC (int) ;
 int BYT_RT5640_JD_NOT_INV ;
 int BYT_RT5640_MAP (int) ;
 int BYT_RT5640_MCLK_25MHZ ;
 int BYT_RT5640_MCLK_EN ;
 int BYT_RT5640_MONO_SPEAKER ;
 int BYT_RT5640_OVCD_SF (int) ;
 int BYT_RT5640_OVCD_TH (int) ;
 int BYT_RT5640_SSP0_AIF1 ;
 int BYT_RT5640_SSP0_AIF2 ;
 int BYT_RT5640_SSP2_AIF2 ;
 int byt_rt5640_quirk ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,...) ;
 scalar_t__ is_bytcr ;

__attribute__((used)) static void log_quirks(struct device *dev)
{
 int map;
 bool has_mclk = 0;
 bool has_ssp0 = 0;
 bool has_ssp0_aif1 = 0;
 bool has_ssp0_aif2 = 0;
 bool has_ssp2_aif2 = 0;

 map = BYT_RT5640_MAP(byt_rt5640_quirk);
 switch (map) {
 case 131:
  dev_info(dev, "quirk DMIC1_MAP enabled\n");
  break;
 case 130:
  dev_info(dev, "quirk DMIC2_MAP enabled\n");
  break;
 case 129:
  dev_info(dev, "quirk IN1_MAP enabled\n");
  break;
 case 128:
  dev_info(dev, "quirk IN3_MAP enabled\n");
  break;
 default:
  dev_err(dev, "quirk map 0x%x is not supported, microphone input will not work\n", map);
  break;
 }
 if (BYT_RT5640_JDSRC(byt_rt5640_quirk)) {
  dev_info(dev, "quirk realtek,jack-detect-source %ld\n",
    BYT_RT5640_JDSRC(byt_rt5640_quirk));
  dev_info(dev, "quirk realtek,over-current-threshold-microamp %ld\n",
    BYT_RT5640_OVCD_TH(byt_rt5640_quirk) * 100);
  dev_info(dev, "quirk realtek,over-current-scale-factor %ld\n",
    BYT_RT5640_OVCD_SF(byt_rt5640_quirk));
 }
 if (byt_rt5640_quirk & BYT_RT5640_JD_NOT_INV)
  dev_info(dev, "quirk JD_NOT_INV enabled\n");
 if (byt_rt5640_quirk & BYT_RT5640_MONO_SPEAKER)
  dev_info(dev, "quirk MONO_SPEAKER enabled\n");
 if (byt_rt5640_quirk & BYT_RT5640_DIFF_MIC)
  dev_info(dev, "quirk DIFF_MIC enabled\n");
 if (byt_rt5640_quirk & BYT_RT5640_SSP0_AIF1) {
  dev_info(dev, "quirk SSP0_AIF1 enabled\n");
  has_ssp0 = 1;
  has_ssp0_aif1 = 1;
 }
 if (byt_rt5640_quirk & BYT_RT5640_SSP0_AIF2) {
  dev_info(dev, "quirk SSP0_AIF2 enabled\n");
  has_ssp0 = 1;
  has_ssp0_aif2 = 1;
 }
 if (byt_rt5640_quirk & BYT_RT5640_SSP2_AIF2) {
  dev_info(dev, "quirk SSP2_AIF2 enabled\n");
  has_ssp2_aif2 = 1;
 }
 if (is_bytcr && !has_ssp0)
  dev_err(dev, "Invalid routing, bytcr detected but no SSP0-based quirk, audio cannot work with SSP2 on bytcr\n");
 if (has_ssp0_aif1 && has_ssp0_aif2)
  dev_err(dev, "Invalid routing, SSP0 cannot be connected to both AIF1 and AIF2\n");
 if (has_ssp0 && has_ssp2_aif2)
  dev_err(dev, "Invalid routing, cannot have both SSP0 and SSP2 connected to codec\n");

 if (byt_rt5640_quirk & BYT_RT5640_MCLK_EN) {
  dev_info(dev, "quirk MCLK_EN enabled\n");
  has_mclk = 1;
 }
 if (byt_rt5640_quirk & BYT_RT5640_MCLK_25MHZ) {
  if (has_mclk)
   dev_info(dev, "quirk MCLK_25MHZ enabled\n");
  else
   dev_err(dev, "quirk MCLK_25MHZ enabled but quirk MCLK not selected, will be ignored\n");
 }
}
