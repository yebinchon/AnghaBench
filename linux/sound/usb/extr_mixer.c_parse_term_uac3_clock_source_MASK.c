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
struct usb_audio_term {int type; int id; int /*<<< orphan*/  name; } ;
struct uac3_clock_source_descriptor {int /*<<< orphan*/  wClockSourceStr; } ;
struct mixer_build {int dummy; } ;

/* Variables and functions */
 int UAC3_CLOCK_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mixer_build *state,
					struct usb_audio_term *term,
					void *p1, int id)
{
	struct uac3_clock_source_descriptor *d = p1;

	term->type = UAC3_CLOCK_SOURCE << 16; /* virtual type */
	term->id = id;
	term->name = FUNC0(d->wClockSourceStr);
	return 0;
}