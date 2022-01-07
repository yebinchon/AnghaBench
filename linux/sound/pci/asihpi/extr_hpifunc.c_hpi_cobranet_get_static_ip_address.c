
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;


 int HPI_COBRANET_HMI_cobra_ip_mon_staticIP ;
 scalar_t__ hpi_cobranet_hmi_read (int,int ,int,int*,int *) ;

u16 hpi_cobranet_get_static_ip_address(u32 h_control, u32 *pdw_ip_address)
{
 u32 byte_count;
 u32 iP;
 u16 err;
 err = hpi_cobranet_hmi_read(h_control,
  HPI_COBRANET_HMI_cobra_ip_mon_staticIP, 4, &byte_count,
  (u8 *)&iP);

 *pdw_ip_address =
  ((iP & 0xff000000) >> 8) | ((iP & 0x00ff0000) << 8) | ((iP &
   0x0000ff00) >> 8) | ((iP & 0x000000ff) << 8);

 if (err)
  *pdw_ip_address = 0;

 return err;

}
