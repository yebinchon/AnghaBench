
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int (* select_adc_source ) (struct hw*,int ) ;scalar_t__ (* is_adc_source_selected ) (struct hw*,int ) ;} ;
struct ct_atc {struct hw* hw; } ;


 int ADC_NONE ;
 scalar_t__ stub1 (struct hw*,int ) ;
 int stub2 (struct hw*,int ) ;

__attribute__((used)) static int atc_select_digit_io(struct ct_atc *atc)
{
 struct hw *hw = atc->hw;

 if (hw->is_adc_source_selected(hw, ADC_NONE))
  return 0;

 hw->select_adc_source(hw, ADC_NONE);

 return 0;
}
