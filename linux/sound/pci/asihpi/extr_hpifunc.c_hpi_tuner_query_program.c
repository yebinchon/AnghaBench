
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_TUNER_PROGRAM ;
 int hpi_control_query (int const,int ,int ,int ,int *) ;

u16 hpi_tuner_query_program(const u32 h_tuner, u32 *pbitmap_program)
{
 return hpi_control_query(h_tuner, HPI_TUNER_PROGRAM, 0, 0,
  pbitmap_program);
}
