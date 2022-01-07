
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {int dummy; } ;
struct daio_conf {int msr; } ;


 int I2SCTL ;
 int SPICTL ;
 int SPOCTL ;
 int hw_write_20kx (struct hw*,int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static int hw_daio_init(struct hw *hw, const struct daio_conf *info)
{
 u32 i2sorg;
 u32 spdorg;



 i2sorg = 0x94040404;


 i2sorg &= 0xfffffffc;




 hw_write_20kx(hw, SPOCTL, 0x0);
 spdorg = 0x05;

 switch (info->msr) {
 case 1:
  i2sorg |= 1;
  spdorg |= (0x0 << 6);
  break;
 case 2:
  i2sorg |= 2;
  spdorg |= (0x1 << 6);
  break;
 case 4:
  i2sorg |= 3;
  spdorg |= (0x2 << 6);
  break;
 default:
  i2sorg |= 1;
  break;
 }

 hw_write_20kx(hw, I2SCTL, i2sorg);
 hw_write_20kx(hw, SPOCTL, spdorg);



 hw_write_20kx(hw, SPICTL, 0x0);
 mdelay(1);
 spdorg = 0x0a0a0a0a;
 hw_write_20kx(hw, SPICTL, spdorg);
 mdelay(1);

 return 0;
}
