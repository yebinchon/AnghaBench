
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
typedef enum da7219_aad_btn_cfg { ____Placeholder_da7219_aad_btn_cfg } da7219_aad_btn_cfg ;


 int DA7219_AAD_BTN_CFG_100MS ;
 int DA7219_AAD_BTN_CFG_10MS ;
 int DA7219_AAD_BTN_CFG_200MS ;
 int DA7219_AAD_BTN_CFG_2MS ;
 int DA7219_AAD_BTN_CFG_500MS ;
 int DA7219_AAD_BTN_CFG_50MS ;
 int DA7219_AAD_BTN_CFG_5MS ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static enum da7219_aad_btn_cfg
 da7219_aad_fw_btn_cfg(struct snd_soc_component *component, u32 val)
{
 switch (val) {
 case 2:
  return DA7219_AAD_BTN_CFG_2MS;
 case 5:
  return DA7219_AAD_BTN_CFG_5MS;
 case 10:
  return DA7219_AAD_BTN_CFG_10MS;
 case 50:
  return DA7219_AAD_BTN_CFG_50MS;
 case 100:
  return DA7219_AAD_BTN_CFG_100MS;
 case 200:
  return DA7219_AAD_BTN_CFG_200MS;
 case 500:
  return DA7219_AAD_BTN_CFG_500MS;
 default:
  dev_warn(component->dev, "Invalid button config");
  return DA7219_AAD_BTN_CFG_10MS;
 }
}
