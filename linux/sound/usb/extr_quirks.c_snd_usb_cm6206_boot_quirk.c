
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int CM6206_REG0_SPDIFO_COPYRIGHT_NA ;
 int CM6206_REG0_SPDIFO_RATE_48K ;
 int CM6206_REG1_PLLBIN_EN ;
 int CM6206_REG1_SOFT_MUTE_EN ;
 int CM6206_REG2_DRIVER_ON ;
 int CM6206_REG2_HEADP_SEL_FRONT_CHANNELS ;
 int CM6206_REG2_MUTE_HEADPHONE_LEFT ;
 int CM6206_REG2_MUTE_HEADPHONE_RIGHT ;
 int CM6206_REG3_CBOE ;
 int CM6206_REG3_FLYSPEED_DEFAULT ;
 int CM6206_REG3_FOE ;
 int CM6206_REG3_HPOE ;
 int CM6206_REG3_LOSE ;
 int CM6206_REG3_ROE ;
 int CM6206_REG3_SPDIFI_CANREC ;
 int CM6206_REG3_VRAP25EN ;
 int CM6206_REG5_AD_RSTN ;
 int CM6206_REG5_DA_RSTN ;
 int snd_usb_cm106_write_int_reg (struct usb_device*,int,int) ;

__attribute__((used)) static int snd_usb_cm6206_boot_quirk(struct usb_device *dev)
{
 int err = 0, reg;
 int val[] = {






  CM6206_REG0_SPDIFO_RATE_48K |
  CM6206_REG0_SPDIFO_COPYRIGHT_NA,



  CM6206_REG1_PLLBIN_EN |
  CM6206_REG1_SOFT_MUTE_EN,






  CM6206_REG2_DRIVER_ON |
  CM6206_REG2_HEADP_SEL_FRONT_CHANNELS |
  CM6206_REG2_MUTE_HEADPHONE_RIGHT |
  CM6206_REG2_MUTE_HEADPHONE_LEFT,




  CM6206_REG3_FLYSPEED_DEFAULT |
  CM6206_REG3_VRAP25EN |
  CM6206_REG3_FOE |
  CM6206_REG3_ROE |
  CM6206_REG3_CBOE |
  CM6206_REG3_LOSE |
  CM6206_REG3_HPOE |
  CM6206_REG3_SPDIFI_CANREC,

  0x0000,

  CM6206_REG5_DA_RSTN |
  CM6206_REG5_AD_RSTN };

 for (reg = 0; reg < ARRAY_SIZE(val); reg++) {
  err = snd_usb_cm106_write_int_reg(dev, reg, val[reg]);
  if (err < 0)
   return err;
 }

 return err;
}
