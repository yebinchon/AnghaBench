
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int PLLCTL ;
 int dev_alert (int ,char*) ;
 unsigned int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,unsigned int) ;
 int msleep (int) ;

__attribute__((used)) static int hw_pll_init(struct hw *hw, unsigned int rsr)
{
 unsigned int pllctl;
 int i;

 pllctl = (48000 == rsr) ? 0x1480a001 : 0x1480a731;
 for (i = 0; i < 3; i++) {
  if (hw_read_20kx(hw, PLLCTL) == pllctl)
   break;

  hw_write_20kx(hw, PLLCTL, pllctl);
  msleep(40);
 }
 if (i >= 3) {
  dev_alert(hw->card->dev, "PLL initialization failed!!!\n");
  return -EBUSY;
 }

 return 0;
}
