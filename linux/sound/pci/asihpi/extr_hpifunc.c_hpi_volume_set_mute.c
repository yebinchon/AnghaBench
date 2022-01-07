
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_VOLUME_MUTE ;
 int hpi_control_param_set (int ,int ,int ,int ) ;

u16 hpi_volume_set_mute(u32 h_control, u32 mute)
{
 return hpi_control_param_set(h_control, HPI_VOLUME_MUTE, mute, 0);
}
