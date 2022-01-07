
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
typedef enum da7218_dmic_data_sel { ____Placeholder_da7218_dmic_data_sel } da7218_dmic_data_sel ;


 int DA7218_DMIC_DATA_LFALL_RRISE ;
 int DA7218_DMIC_DATA_LRISE_RFALL ;
 int dev_warn (int ,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum da7218_dmic_data_sel
 da7218_of_dmic_data_sel(struct snd_soc_component *component, const char *str)
{
 if (!strcmp(str, "lrise_rfall")) {
  return DA7218_DMIC_DATA_LRISE_RFALL;
 } else if (!strcmp(str, "lfall_rrise")) {
  return DA7218_DMIC_DATA_LFALL_RRISE;
 } else {
  dev_warn(component->dev, "Invalid DMIC data type selection");
  return DA7218_DMIC_DATA_LRISE_RFALL;
 }
}
