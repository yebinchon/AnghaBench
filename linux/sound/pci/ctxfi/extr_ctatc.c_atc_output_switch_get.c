
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int (* output_switch_get ) (struct hw*) ;} ;
struct ct_atc {struct hw* hw; } ;


 int stub1 (struct hw*) ;

__attribute__((used)) static int atc_output_switch_get(struct ct_atc *atc)
{
 struct hw *hw = atc->hw;

 return hw->output_switch_get(hw);
}
