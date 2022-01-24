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
struct usb_audio_term {scalar_t__ channels; } ;
struct uac_mixer_unit_descriptor {int bNrInPins; int /*<<< orphan*/ * baSourceID; } ;
struct mixer_build {TYPE_1__* mixer; int /*<<< orphan*/  chip; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_2__ {int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mixer_build*,struct uac_mixer_unit_descriptor*,int,int,int,int,struct usb_audio_term*) ; 
 int FUNC1 (struct mixer_build*,int /*<<< orphan*/ ,struct usb_audio_term*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC3 (struct uac_mixer_unit_descriptor*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct mixer_build*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct uac_mixer_unit_descriptor*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mixer_build*,struct uac_mixer_unit_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC8(struct mixer_build *state, int unitid,
				  void *raw_desc)
{
	struct uac_mixer_unit_descriptor *desc = raw_desc;
	struct usb_audio_term iterm;
	int input_pins, num_ins, num_outs;
	int pin, ich, err;

	err = FUNC6(state, desc);
	if (err < 0) {
		FUNC7(state->chip,
			      "invalid MIXER UNIT descriptor %d\n",
			      unitid);
		return err;
	}

	num_outs = err;
	input_pins = desc->bNrInPins;

	num_ins = 0;
	ich = 0;
	for (pin = 0; pin < input_pins; pin++) {
		err = FUNC4(state, desc->baSourceID[pin]);
		if (err < 0)
			continue;
		/* no bmControls field (e.g. Maya44) -> ignore */
		if (!num_outs)
			continue;
		err = FUNC1(state, desc->baSourceID[pin], &iterm);
		if (err < 0)
			return err;
		num_ins += iterm.channels;
		if (FUNC3(desc, state->mixer->protocol,
					  num_ins, num_outs))
			break;
		for (; ich < num_ins; ich++) {
			int och, ich_has_controls = 0;

			for (och = 0; och < num_outs; och++) {
				__u8 *c = FUNC5(desc,
						state->mixer->protocol);

				if (FUNC2(c, ich, och, num_outs)) {
					ich_has_controls = 1;
					break;
				}
			}
			if (ich_has_controls)
				FUNC0(state, desc, pin, ich, num_outs,
						     unitid, &iterm);
		}
	}
	return 0;
}