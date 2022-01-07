
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_BITSTREAM_CLOCK_EDGE ;
 int hpi_control_param_set (int ,int ,int ,int ) ;

u16 hpi_bitstream_set_clock_edge(u32 h_control, u16 edge_type)
{
 return hpi_control_param_set(h_control, HPI_BITSTREAM_CLOCK_EDGE,
  edge_type, 0);
}
