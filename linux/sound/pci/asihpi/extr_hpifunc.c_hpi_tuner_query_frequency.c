
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_TUNER_FREQ ;
 int hpi_control_query (int const,int ,int const,int const,int *) ;

u16 hpi_tuner_query_frequency(const u32 h_tuner, const u32 index,
 const u16 band, u32 *pfreq)
{
 return hpi_control_query(h_tuner, HPI_TUNER_FREQ, index, band, pfreq);
}
