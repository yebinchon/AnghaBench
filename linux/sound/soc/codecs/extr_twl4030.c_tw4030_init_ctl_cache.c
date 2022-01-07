
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_priv {int * ctl_cache; } ;


 int TWL4030_MODULE_AUDIO_VOICE ;
 int TWL4030_REG_EAR_CTL ;
 int TWL4030_REG_PRECKR_CTL ;
 int twl_i2c_read_u8 (int ,int *,int) ;

__attribute__((used)) static void tw4030_init_ctl_cache(struct twl4030_priv *twl4030)
{
 int i;
 u8 byte;

 for (i = TWL4030_REG_EAR_CTL; i <= TWL4030_REG_PRECKR_CTL; i++) {
  twl_i2c_read_u8(TWL4030_MODULE_AUDIO_VOICE, &byte, i);
  twl4030->ctl_cache[i - TWL4030_REG_EAR_CTL] = byte;
 }
}
