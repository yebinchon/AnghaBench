
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {scalar_t__ io_base; } ;


 int hw_card_shutdown (struct hw*) ;
 int kfree (struct hw*) ;

int destroy_20k2_hw_obj(struct hw *hw)
{
 if (hw->io_base)
  hw_card_shutdown(hw);

 kfree(hw);
 return 0;
}
