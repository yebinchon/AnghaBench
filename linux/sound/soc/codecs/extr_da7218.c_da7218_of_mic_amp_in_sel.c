
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
typedef enum da7218_mic_amp_in_sel { ____Placeholder_da7218_mic_amp_in_sel } da7218_mic_amp_in_sel ;


 int DA7218_MIC_AMP_IN_SEL_DIFF ;
 int DA7218_MIC_AMP_IN_SEL_SE_N ;
 int DA7218_MIC_AMP_IN_SEL_SE_P ;
 int dev_warn (int ,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum da7218_mic_amp_in_sel
 da7218_of_mic_amp_in_sel(struct snd_soc_component *component, const char *str)
{
 if (!strcmp(str, "diff")) {
  return DA7218_MIC_AMP_IN_SEL_DIFF;
 } else if (!strcmp(str, "se_p")) {
  return DA7218_MIC_AMP_IN_SEL_SE_P;
 } else if (!strcmp(str, "se_n")) {
  return DA7218_MIC_AMP_IN_SEL_SE_N;
 } else {
  dev_warn(component->dev, "Invalid mic input type selection");
  return DA7218_MIC_AMP_IN_SEL_DIFF;
 }
}
