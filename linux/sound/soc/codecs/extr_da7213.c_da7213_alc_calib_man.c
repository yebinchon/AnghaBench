
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;


 int DA7213_ALC_CIC_OP_CHANNEL_LEFT ;
 int DA7213_ALC_CIC_OP_CHANNEL_RIGHT ;
 int DA7213_ALC_CTRL1 ;
 int DA7213_ALC_OFFSET_15_8 ;
 int DA7213_ALC_OFFSET_19_16 ;
 int DA7213_ALC_OFFSET_EN ;
 int DA7213_ALC_OFFSET_MAN_M_L ;
 int DA7213_ALC_OFFSET_MAN_M_R ;
 int DA7213_ALC_OFFSET_MAN_U_L ;
 int DA7213_ALC_OFFSET_MAN_U_R ;
 int DA7213_ALC_SYNC_MODE ;
 int da7213_get_alc_data (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void da7213_alc_calib_man(struct snd_soc_component *component)
{
 u8 reg_val;
 int avg_left_data, avg_right_data, offset_l, offset_r;



 avg_left_data = da7213_get_alc_data(component,
   DA7213_ALC_CIC_OP_CHANNEL_LEFT);

 avg_right_data = da7213_get_alc_data(component,
    DA7213_ALC_CIC_OP_CHANNEL_RIGHT);


 offset_l = -avg_left_data;
 offset_r = -avg_right_data;

 reg_val = (offset_l & DA7213_ALC_OFFSET_15_8) >> 8;
 snd_soc_component_write(component, DA7213_ALC_OFFSET_MAN_M_L, reg_val);
 reg_val = (offset_l & DA7213_ALC_OFFSET_19_16) >> 16;
 snd_soc_component_write(component, DA7213_ALC_OFFSET_MAN_U_L, reg_val);

 reg_val = (offset_r & DA7213_ALC_OFFSET_15_8) >> 8;
 snd_soc_component_write(component, DA7213_ALC_OFFSET_MAN_M_R, reg_val);
 reg_val = (offset_r & DA7213_ALC_OFFSET_19_16) >> 16;
 snd_soc_component_write(component, DA7213_ALC_OFFSET_MAN_U_R, reg_val);


 snd_soc_component_update_bits(component, DA7213_ALC_CTRL1,
       DA7213_ALC_OFFSET_EN | DA7213_ALC_SYNC_MODE,
       DA7213_ALC_OFFSET_EN | DA7213_ALC_SYNC_MODE);
}
