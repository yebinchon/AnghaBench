
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_PAD_COMMENT ;
 int hpi_control_get_string (int ,int ,char*,int const) ;

u16 hpi_pad_get_comment(u32 h_control, char *psz_string,
 const u32 data_length)
{
 return hpi_control_get_string(h_control, HPI_PAD_COMMENT, psz_string,
  data_length);
}
