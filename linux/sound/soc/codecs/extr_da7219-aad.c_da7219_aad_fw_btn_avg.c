
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
typedef enum da7219_aad_btn_avg { ____Placeholder_da7219_aad_btn_avg } da7219_aad_btn_avg ;


 int DA7219_AAD_BTN_AVG_1 ;
 int DA7219_AAD_BTN_AVG_2 ;
 int DA7219_AAD_BTN_AVG_4 ;
 int DA7219_AAD_BTN_AVG_8 ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static enum da7219_aad_btn_avg
 da7219_aad_fw_btn_avg(struct snd_soc_component *component, u32 val)
{
 switch (val) {
 case 1:
  return DA7219_AAD_BTN_AVG_1;
 case 2:
  return DA7219_AAD_BTN_AVG_2;
 case 4:
  return DA7219_AAD_BTN_AVG_4;
 case 8:
  return DA7219_AAD_BTN_AVG_8;
 default:
  dev_warn(component->dev, "Invalid button average value");
  return DA7219_AAD_BTN_AVG_2;
 }
}
