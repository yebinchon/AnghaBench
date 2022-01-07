
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_BITSTREAM_DATA_POLARITY ;
 int hpi_control_param_set (int ,int ,int ,int ) ;

u16 hpi_bitstream_set_data_polarity(u32 h_control, u16 polarity)
{
 return hpi_control_param_set(h_control, HPI_BITSTREAM_DATA_POLARITY,
  polarity, 0);
}
