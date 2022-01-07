
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int GCTL ;
 int GCTL_AID ;
 int GCTL_EAI ;
 int dev_alert (int ,char*) ;
 scalar_t__ get_field (unsigned int,int ) ;
 unsigned int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,unsigned int) ;
 int mdelay (int) ;
 int set_field (unsigned int*,int ,int) ;

__attribute__((used)) static int hw_auto_init(struct hw *hw)
{
 unsigned int gctl;
 int i;

 gctl = hw_read_20kx(hw, GCTL);
 set_field(&gctl, GCTL_EAI, 0);
 hw_write_20kx(hw, GCTL, gctl);
 set_field(&gctl, GCTL_EAI, 1);
 hw_write_20kx(hw, GCTL, gctl);
 mdelay(10);
 for (i = 0; i < 400000; i++) {
  gctl = hw_read_20kx(hw, GCTL);
  if (get_field(gctl, GCTL_AID))
   break;
 }
 if (!get_field(gctl, GCTL_AID)) {
  dev_alert(hw->card->dev, "Card Auto-init failed!!!\n");
  return -EBUSY;
 }

 return 0;
}
