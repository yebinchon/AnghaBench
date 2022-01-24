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
struct hda_codec {int dummy; } ;
struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct TYPE_2__ {int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int INPUT_PIN_ATTR_NORMAL ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec,
				   const struct auto_pin_cfg *cfg,
				   int input)
{
	unsigned int defc;
	int i, attr, attr2;

	defc = FUNC0(codec, cfg->inputs[input].pin);
	attr = FUNC1(defc);
	/* for internal or docking mics, we need locations */
	if (attr <= INPUT_PIN_ATTR_NORMAL)
		return 1;

	attr = 0;
	for (i = 0; i < cfg->num_inputs; i++) {
		defc = FUNC0(codec, cfg->inputs[i].pin);
		attr2 = FUNC1(defc);
		if (attr2 >= INPUT_PIN_ATTR_NORMAL) {
			if (attr && attr != attr2)
				return 1; /* different locations found */
			attr = attr2;
		}
	}
	return 0;
}