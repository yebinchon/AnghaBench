
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int HPI_MULTIPLEXER_SOURCE ;
 scalar_t__ hpi_control_param2_get (scalar_t__,int ,scalar_t__*,scalar_t__*) ;

u16 hpi_multiplexer_get_source(u32 h_control, u16 *source_node_type,
 u16 *source_node_index)
{
 u32 node, index;
 u16 err = hpi_control_param2_get(h_control,
  HPI_MULTIPLEXER_SOURCE, &node,
  &index);
 if (source_node_type)
  *source_node_type = (u16)node;
 if (source_node_index)
  *source_node_index = (u16)index;
 return err;
}
