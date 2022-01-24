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
struct usb_audio_term {int /*<<< orphan*/  name; void* chconfig; int /*<<< orphan*/  channels; void* type; } ;
struct uac_input_terminal_descriptor {int /*<<< orphan*/  iTerminal; int /*<<< orphan*/  wChannelConfig; int /*<<< orphan*/  bNrChannels; int /*<<< orphan*/  wTerminalType; } ;
struct mixer_build {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mixer_build *state,
				      struct usb_audio_term *term,
				      void *p1, int id)
{
	struct uac_input_terminal_descriptor *d = p1;

	term->type = FUNC0(d->wTerminalType);
	term->channels = d->bNrChannels;
	term->chconfig = FUNC0(d->wChannelConfig);
	term->name = d->iTerminal;
	return 0;
}