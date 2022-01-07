
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 int hw_dac_start (struct hw*) ;
 int hw_dac_stop (struct hw*) ;

__attribute__((used)) static void hw_dac_reset(struct hw *hw)
{
 hw_dac_stop(hw);
 hw_dac_start(hw);
}
