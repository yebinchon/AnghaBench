#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct src {int /*<<< orphan*/  rsc; } ;
struct hw {int /*<<< orphan*/  (* select_adc_source ) (struct hw*,int /*<<< orphan*/ ) ;scalar_t__ (* is_adc_source_selected ) (struct hw*,int /*<<< orphan*/ ) ;} ;
struct ct_mixer {int /*<<< orphan*/  (* set_input_right ) (struct ct_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_input_left ) (struct ct_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct ct_atc {struct src** srcs; struct ct_mixer* mixer; struct hw* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_MICIN ; 
 int /*<<< orphan*/  MIX_LINE_IN ; 
 int /*<<< orphan*/  MIX_MIC_IN ; 
 scalar_t__ FUNC0 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ct_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ct_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ct_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ct_atc *atc)
{
	struct hw *hw = atc->hw;
	struct ct_mixer *mixer = atc->mixer;
	struct src *src;

	if (hw->is_adc_source_selected(hw, ADC_MICIN))
		return 0;

	mixer->set_input_left(mixer, MIX_LINE_IN, NULL);
	mixer->set_input_right(mixer, MIX_LINE_IN, NULL);

	hw->select_adc_source(hw, ADC_MICIN);

	src = atc->srcs[2];
	mixer->set_input_left(mixer, MIX_MIC_IN, &src->rsc);
	src = atc->srcs[3];
	mixer->set_input_right(mixer, MIX_MIC_IN, &src->rsc);

	return 0;
}