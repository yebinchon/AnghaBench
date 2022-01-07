
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int HPI_COBRANET_HMI_cobra_ip_mon_currentIP ;
 int hpi_cobranet_hmi_write (int,int ,int,int *) ;

u16 hpi_cobranet_set_ip_address(u32 h_control, u32 dw_ip_address)
{
 u32 iP;
 u16 err;

 iP = ((dw_ip_address & 0xff000000) >> 8) | ((dw_ip_address &
   0x00ff0000) << 8) | ((dw_ip_address & 0x0000ff00) >>
  8) | ((dw_ip_address & 0x000000ff) << 8);

 err = hpi_cobranet_hmi_write(h_control,
  HPI_COBRANET_HMI_cobra_ip_mon_currentIP, 4, (u8 *)&iP);

 return err;

}
