
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_TUNER_HDRADIO_SDK_VERSION ;
 int hpi_control_get_string (int ,int ,char*,int const) ;

u16 hpi_tuner_get_hd_radio_sdk_version(u32 h_control, char *psz_sdk_version,
 const u32 string_size)
{
 return hpi_control_get_string(h_control,
  HPI_TUNER_HDRADIO_SDK_VERSION, psz_sdk_version, string_size);
}
