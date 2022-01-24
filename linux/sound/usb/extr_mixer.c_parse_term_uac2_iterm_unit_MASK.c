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
struct usb_audio_term {int id; int /*<<< orphan*/  name; int /*<<< orphan*/  chconfig; int /*<<< orphan*/  channels; int /*<<< orphan*/  type; } ;
struct uac2_input_terminal_descriptor {int /*<<< orphan*/  iTerminal; int /*<<< orphan*/  bmChannelConfig; int /*<<< orphan*/  bNrChannels; int /*<<< orphan*/  wTerminalType; int /*<<< orphan*/  bCSourceID; } ;
struct mixer_build {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mixer_build*,int /*<<< orphan*/ ,struct usb_audio_term*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mixer_build *state,
				      struct usb_audio_term *term,
				      void *p1, int id)
{
	struct uac2_input_terminal_descriptor *d = p1;
	int err;

	/* call recursively to verify the referenced clock entity */
	err = FUNC0(state, d->bCSourceID, term);
	if (err < 0)
		return err;

	/* save input term properties after recursion,
	 * to ensure they are not overriden by the recursion calls
	 */
	term->id = id;
	term->type = FUNC1(d->wTerminalType);
	term->channels = d->bNrChannels;
	term->chconfig = FUNC2(d->bmChannelConfig);
	term->name = d->iTerminal;
	return 0;
}