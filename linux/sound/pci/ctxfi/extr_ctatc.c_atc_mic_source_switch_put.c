
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int (* mic_source_switch_put ) (struct hw*,int) ;} ;
struct ct_atc {struct hw* hw; } ;


 int stub1 (struct hw*,int) ;

__attribute__((used)) static int atc_mic_source_switch_put(struct ct_atc *atc, int position)
{
 struct hw *hw = atc->hw;

 return hw->mic_source_switch_put(hw, position);
}
