
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum da7219_mic_amp_in_sel { ____Placeholder_da7219_mic_amp_in_sel } da7219_mic_amp_in_sel ;


 int DA7219_MIC_AMP_IN_SEL_DIFF ;
 int DA7219_MIC_AMP_IN_SEL_SE_N ;
 int DA7219_MIC_AMP_IN_SEL_SE_P ;
 int dev_warn (struct device*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum da7219_mic_amp_in_sel
 da7219_fw_mic_amp_in_sel(struct device *dev, const char *str)
{
 if (!strcmp(str, "diff")) {
  return DA7219_MIC_AMP_IN_SEL_DIFF;
 } else if (!strcmp(str, "se_p")) {
  return DA7219_MIC_AMP_IN_SEL_SE_P;
 } else if (!strcmp(str, "se_n")) {
  return DA7219_MIC_AMP_IN_SEL_SE_N;
 } else {
  dev_warn(dev, "Invalid mic input type selection");
  return DA7219_MIC_AMP_IN_SEL_DIFF;
 }
}
