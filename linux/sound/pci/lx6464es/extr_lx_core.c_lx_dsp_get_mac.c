
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct lx6464es {void** mac_address; } ;


 int eReg_ADMACESLSB ;
 int eReg_ADMACESMSB ;
 int lx_dsp_reg_read (struct lx6464es*,int ) ;

int lx_dsp_get_mac(struct lx6464es *chip)
{
 u32 macmsb, maclsb;

 macmsb = lx_dsp_reg_read(chip, eReg_ADMACESMSB) & 0x00FFFFFF;
 maclsb = lx_dsp_reg_read(chip, eReg_ADMACESLSB) & 0x00FFFFFF;


 chip->mac_address[5] = ((u8 *)(&maclsb))[0];
 chip->mac_address[4] = ((u8 *)(&maclsb))[1];
 chip->mac_address[3] = ((u8 *)(&maclsb))[2];
 chip->mac_address[2] = ((u8 *)(&macmsb))[0];
 chip->mac_address[1] = ((u8 *)(&macmsb))[1];
 chip->mac_address[0] = ((u8 *)(&macmsb))[2];

 return 0;
}
