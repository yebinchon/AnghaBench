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
struct usb_audio_term {int type; int channels; int /*<<< orphan*/  name; int /*<<< orphan*/  chconfig; } ;
struct uac_mixer_unit_descriptor {int dummy; } ;
struct mixer_build {TYPE_1__* mixer; } ;
struct TYPE_2__ {int protocol; } ;

/* Variables and functions */
 int UAC3_MIXER_UNIT ; 
 int UAC_VERSION_3 ; 
 int FUNC0 (struct mixer_build*,struct uac_mixer_unit_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (struct uac_mixer_unit_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct uac_mixer_unit_descriptor*,int) ; 

__attribute__((used)) static int FUNC3(struct mixer_build *state,
				 struct usb_audio_term *term,
				 void *p1, int id)
{
	struct uac_mixer_unit_descriptor *d = p1;
	int protocol = state->mixer->protocol;
	int err;

	err = FUNC0(state, d);
	if (err <= 0)
		return err;

	term->type = UAC3_MIXER_UNIT << 16; /* virtual type */
	term->channels = err;
	if (protocol != UAC_VERSION_3) {
		term->chconfig = FUNC2(d, protocol);
		term->name = FUNC1(d);
	}
	return 0;
}