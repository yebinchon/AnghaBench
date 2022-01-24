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
struct hda_codec {int dummy; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_AMP_GAIN_MUTE ; 
 int AC_WCAP_IN_AMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDA_AMP_MUTE ; 
 int /*<<< orphan*/  HDA_AMP_VOLMASK ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  PIN_VREF80 ; 
 int FUNC1 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec, hda_nid_t pin, hda_nid_t adc)
{
	if (pin) {
		FUNC4(codec, pin, PIN_VREF80);
		if (FUNC1(codec, pin) & AC_WCAP_IN_AMP)
			FUNC3(codec, pin, 0,
					    AC_VERB_SET_AMP_GAIN_MUTE,
					    FUNC0(0));
	}
	if (adc && (FUNC1(codec, adc) & AC_WCAP_IN_AMP)) {
		FUNC3(codec, adc, 0, AC_VERB_SET_AMP_GAIN_MUTE,
				    FUNC0(0));

		/* init to 0 dB and unmute. */
		FUNC2(codec, adc, HDA_INPUT, 0,
					 HDA_AMP_VOLMASK, 0x5a);
		FUNC2(codec, adc, HDA_INPUT, 0,
					 HDA_AMP_MUTE, 0);
	}
}