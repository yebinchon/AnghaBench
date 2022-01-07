
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_SAMPLECLOCK_LOCAL_SAMPLERATE ;
 int hpi_control_query (int const,int ,int const,int ,int *) ;

u16 hpi_sample_clock_query_local_rate(const u32 h_clock, const u32 index,
 u32 *prate)
{
 return hpi_control_query(h_clock, HPI_SAMPLECLOCK_LOCAL_SAMPLERATE,
     index, 0, prate);
}
