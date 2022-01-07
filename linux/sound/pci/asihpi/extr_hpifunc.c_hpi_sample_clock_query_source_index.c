
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int HPI_SAMPLECLOCK_SOURCE_INDEX ;
 scalar_t__ hpi_control_query (scalar_t__ const,int ,scalar_t__ const,scalar_t__ const,scalar_t__*) ;

u16 hpi_sample_clock_query_source_index(const u32 h_clock, const u32 index,
 const u32 source, u16 *pw_source_index)
{
 u32 qr;
 u16 err;

 err = hpi_control_query(h_clock, HPI_SAMPLECLOCK_SOURCE_INDEX, index,
  source, &qr);
 *pw_source_index = (u16)qr;
 return err;
}
