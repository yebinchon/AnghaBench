
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_METER_NUM_CHANNELS ;
 int hpi_control_query (int const,int ,int ,int ,int *) ;

u16 hpi_meter_query_channels(const u32 h_meter, u32 *p_channels)
{
 return hpi_control_query(h_meter, HPI_METER_NUM_CHANNELS, 0, 0,
  p_channels);
}
