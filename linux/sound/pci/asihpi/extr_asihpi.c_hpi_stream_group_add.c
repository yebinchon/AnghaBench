
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 scalar_t__ HPI_OBJ_OSTREAM ;
 scalar_t__ hpi_handle_object (int ) ;
 int hpi_instream_group_add (int ,int ) ;
 int hpi_outstream_group_add (int ,int ) ;

__attribute__((used)) static inline u16 hpi_stream_group_add(
     u32 h_master,
     u32 h_stream)
{
 if (hpi_handle_object(h_master) == HPI_OBJ_OSTREAM)
  return hpi_outstream_group_add(h_master, h_stream);
 else
  return hpi_instream_group_add(h_master, h_stream);
}
