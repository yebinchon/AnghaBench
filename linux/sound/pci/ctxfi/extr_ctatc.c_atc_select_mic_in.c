
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct src {int rsc; } ;
struct hw {int (* select_adc_source ) (struct hw*,int ) ;scalar_t__ (* is_adc_source_selected ) (struct hw*,int ) ;} ;
struct ct_mixer {int (* set_input_right ) (struct ct_mixer*,int ,int *) ;int (* set_input_left ) (struct ct_mixer*,int ,int *) ;} ;
struct ct_atc {struct src** srcs; struct ct_mixer* mixer; struct hw* hw; } ;


 int ADC_MICIN ;
 int MIX_LINE_IN ;
 int MIX_MIC_IN ;
 scalar_t__ stub1 (struct hw*,int ) ;
 int stub2 (struct ct_mixer*,int ,int *) ;
 int stub3 (struct ct_mixer*,int ,int *) ;
 int stub4 (struct hw*,int ) ;
 int stub5 (struct ct_mixer*,int ,int *) ;
 int stub6 (struct ct_mixer*,int ,int *) ;

__attribute__((used)) static int atc_select_mic_in(struct ct_atc *atc)
{
 struct hw *hw = atc->hw;
 struct ct_mixer *mixer = atc->mixer;
 struct src *src;

 if (hw->is_adc_source_selected(hw, ADC_MICIN))
  return 0;

 mixer->set_input_left(mixer, MIX_LINE_IN, ((void*)0));
 mixer->set_input_right(mixer, MIX_LINE_IN, ((void*)0));

 hw->select_adc_source(hw, ADC_MICIN);

 src = atc->srcs[2];
 mixer->set_input_left(mixer, MIX_MIC_IN, &src->rsc);
 src = atc->srcs[3];
 mixer->set_input_right(mixer, MIX_MIC_IN, &src->rsc);

 return 0;
}
