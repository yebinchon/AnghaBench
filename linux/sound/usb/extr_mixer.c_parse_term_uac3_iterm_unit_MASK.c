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
struct usb_audio_term {int id; int channels; void* name; scalar_t__ chconfig; void* type; } ;
struct uac3_input_terminal_descriptor {int /*<<< orphan*/  wTerminalDescrStr; int /*<<< orphan*/  wClusterDescrID; int /*<<< orphan*/  wTerminalType; int /*<<< orphan*/  bCSourceID; } ;
struct mixer_build {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mixer_build*,int /*<<< orphan*/ ,struct usb_audio_term*) ; 
 int FUNC1 (struct mixer_build*,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mixer_build *state,
				      struct usb_audio_term *term,
				      void *p1, int id)
{
	struct uac3_input_terminal_descriptor *d = p1;
	int err;

	/* call recursively to verify the referenced clock entity */
	err = FUNC0(state, d->bCSourceID, term);
	if (err < 0)
		return err;

	/* save input term properties after recursion,
	 * to ensure they are not overriden by the recursion calls
	 */
	term->id = id;
	term->type = FUNC2(d->wTerminalType);

	err = FUNC1(state, FUNC2(d->wClusterDescrID));
	if (err < 0)
		return err;
	term->channels = err;

	/* REVISIT: UAC3 IT doesn't have channels cfg */
	term->chconfig = 0;

	term->name = FUNC2(d->wTerminalDescrStr);
	return 0;
}