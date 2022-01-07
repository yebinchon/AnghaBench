
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 scalar_t__ HPI_OBJ_OSTREAM ;
 scalar_t__ hpi_handle_object (int ) ;
 int hpi_instream_stop (int ) ;
 int hpi_outstream_stop (int ) ;

__attribute__((used)) static inline u16 hpi_stream_stop(u32 h_stream)
{
 if (hpi_handle_object(h_stream) == HPI_OBJ_OSTREAM)
  return hpi_outstream_stop(h_stream);
 else
  return hpi_instream_stop(h_stream);
}
