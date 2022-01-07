
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {TYPE_1__* pci; } ;
struct TYPE_2__ {int device; } ;


 int ENODEV ;
 int destroy_20k1_hw_obj (struct hw*) ;
 int destroy_20k2_hw_obj (struct hw*) ;

int destroy_hw_obj(struct hw *hw)
{
 int err;

 switch (hw->pci->device) {
 case 0x0005:
  err = destroy_20k1_hw_obj(hw);
  break;
 case 0x000B:
  err = destroy_20k2_hw_obj(hw);
  break;
 default:
  err = -ENODEV;
  break;
 }

 return err;
}
