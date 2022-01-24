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
struct usb_mixer_interface {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct usb_mixer_interface*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * snd_rme_controls ; 

__attribute__((used)) static int FUNC2(struct usb_mixer_interface *mixer)
{
	int err, i;

	for (i = 0; i < FUNC0(snd_rme_controls); ++i) {
		err = FUNC1(mixer, 0,
						 NULL,
						 &snd_rme_controls[i],
						 NULL);
		if (err < 0)
			return err;
	}

	return 0;
}