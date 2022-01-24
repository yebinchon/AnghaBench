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
struct uac_mixer_unit_descriptor {int /*<<< orphan*/  bNrInPins; int /*<<< orphan*/  bLength; } ;
struct mixer_build {TYPE_1__* mixer; } ;
struct TYPE_2__ {int protocol; } ;

/* Variables and functions */
#define  UAC_VERSION_1 130 
#define  UAC_VERSION_2 129 
#define  UAC_VERSION_3 128 
 int FUNC0 (struct mixer_build*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uac_mixer_unit_descriptor*) ; 
 int FUNC2 (struct uac_mixer_unit_descriptor*) ; 

__attribute__((used)) static int FUNC3(struct mixer_build *state,
				       struct uac_mixer_unit_descriptor *desc)
{
	int mu_channels;

	switch (state->mixer->protocol) {
	case UAC_VERSION_1:
	case UAC_VERSION_2:
	default:
		if (desc->bLength < sizeof(*desc) + desc->bNrInPins + 1)
			return 0; /* no bmControls -> skip */
		mu_channels = FUNC2(desc);
		break;
	case UAC_VERSION_3:
		mu_channels = FUNC0(state,
				FUNC1(desc));
		break;
	}

	return mu_channels;
}