
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dev; } ;


 int DA7213_ALC_AUTO_CALIB_EN ;
 int DA7213_ALC_CALIB_OVERFLOW ;
 int DA7213_ALC_CTRL1 ;
 int DA7213_ALC_OFFSET_EN ;
 int DA7213_ALC_SYNC_MODE ;
 int dev_warn (int ,char*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static void da7213_alc_calib_auto(struct snd_soc_component *component)
{
 u8 alc_ctrl1;


 snd_soc_component_update_bits(component, DA7213_ALC_CTRL1, DA7213_ALC_AUTO_CALIB_EN,
       DA7213_ALC_AUTO_CALIB_EN);
 do {
  alc_ctrl1 = snd_soc_component_read32(component, DA7213_ALC_CTRL1);
 } while (alc_ctrl1 & DA7213_ALC_AUTO_CALIB_EN);


 if (alc_ctrl1 & DA7213_ALC_CALIB_OVERFLOW) {
  dev_warn(component->dev,
    "ALC auto calibration failed with overflow\n");
  snd_soc_component_update_bits(component, DA7213_ALC_CTRL1,
        DA7213_ALC_OFFSET_EN | DA7213_ALC_SYNC_MODE,
        0);
 } else {

  snd_soc_component_update_bits(component, DA7213_ALC_CTRL1,
        DA7213_ALC_OFFSET_EN | DA7213_ALC_SYNC_MODE,
        DA7213_ALC_OFFSET_EN | DA7213_ALC_SYNC_MODE);
 }

}
