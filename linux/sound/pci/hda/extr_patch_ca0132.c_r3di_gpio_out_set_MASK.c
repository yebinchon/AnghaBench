#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  afg; } ;
struct hda_codec {TYPE_1__ core; } ;
typedef  enum r3di_out_select { ____Placeholder_r3di_out_select } r3di_out_select ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_GPIO_DATA ; 
 int /*<<< orphan*/  AC_VERB_SET_GPIO_DATA ; 
#define  R3DI_HEADPHONE_OUT 129 
#define  R3DI_LINE_OUT 128 
 int R3DI_OUT_SELECT_BIT ; 
 unsigned int FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec,
		enum r3di_out_select cur_out)
{
	unsigned int cur_gpio;

	/* Get the current GPIO Data setup */
	cur_gpio = FUNC0(codec, 0x01, 0, AC_VERB_GET_GPIO_DATA, 0);

	switch (cur_out) {
	case R3DI_HEADPHONE_OUT:
		cur_gpio &= ~(1 << R3DI_OUT_SELECT_BIT);
		break;
	case R3DI_LINE_OUT:
		cur_gpio |= (1 << R3DI_OUT_SELECT_BIT);
		break;
	}
	FUNC1(codec, codec->core.afg, 0,
			    AC_VERB_SET_GPIO_DATA, cur_gpio);
}